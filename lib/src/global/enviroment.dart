import 'dart:io';

class Enviroment {
  static String API_URL = Platform.isAndroid
      ? 'http://192.168.1.161:9000/api'
      : 'http://localhost:9000/api';

       static String HOST_URL = Platform.isAndroid
      ? 'http://192.168.1.161:9000'
      : 'http://localhost:9000';
}
