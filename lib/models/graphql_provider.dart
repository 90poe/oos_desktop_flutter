import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter/material.dart';
import 'package:oosdesktopflutter/models/environment_config.dart';

final client = getClient(
  uri: Env.graphql,
);

final OptimisticCache cache = OptimisticCache(
  dataIdFromObject: typenameDataIdFromObject,
);

GraphQLClient getClient({
  @required String uri,
  String subscriptionUri,
}) {
  final authLink = AuthLink(
    getToken: () => Env.token,
  );

  final ErrorLink errorLink = ErrorLink(errorHandler: (ErrorResponse response) {
//    Operation operation = response.operation;
//    FetchResult result = response.fetchResult;
//    OperationException exception = response.exception;

//    reportError(response.exception, null);
  });

  final httpLink = HttpLink(uri: uri);

  Link link = authLink.concat(errorLink).concat(httpLink);

  if (subscriptionUri != null) {
    final WebSocketLink websocketLink = WebSocketLink(
      url: subscriptionUri,
      config: SocketClientConfig(
        autoReconnect: true,
        inactivityTimeout: Duration(seconds: 30),
      ),
    );

    link = link.concat(websocketLink);
  }

  return GraphQLClient(
    cache: cache,
    link: link,
  );
}

/// Wraps the root application with the `graphql_flutter` client.
/// We use the cache for all state management.
class GraphqlProvider extends StatelessWidget {
  GraphqlProvider({
    @required this.child,
    @required String uri,
    String subscriptionUri,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: ValueNotifier<GraphQLClient>(client),
      child: child,
    );
  }
}
