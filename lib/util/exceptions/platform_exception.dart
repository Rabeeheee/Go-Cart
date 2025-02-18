class TPlatformException implements Exception{
  final String code;

  TPlatformException(this.code);

  String get message{
    switch(code){
      case 'network_error':
      return 'Network error. please check your internet connection';
      case 'device not supported':
      return 'This feature is not suppot on your device';
         default:
        return 'A platform error occurred. Please try again.';
    }
  }
}