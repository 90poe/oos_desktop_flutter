import 'dart:io';

class Env {
  static final String graphql = '${api}/query';

//  static final String api =
//      '${Platform.isAndroid ? 'https://cff41489.ngrok.io' : 'http://localhost:9002'}';
//
  static final String api =
      'https://my.drydock.studio/api/captain-reports-edge';

  static const String dsn =
      'https://25f13f75d353403ea8b0b361785517c9@sentry.io/3457283';

  static const String env = 'development';

  static const String token = 'Bearer c245958ca815a29657347676acfdf5fb7bc72786';
}
