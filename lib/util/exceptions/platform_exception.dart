class TPlatformException implements Exception {
  final String code;

  TPlatformException(this.code);

  String get message {

    switch (code) {
      case 'network-error':
        return 'Network error. Please check your internet connection.';
      case 'device-not-supported': 
        return 'This feature is not supported on your device.';
      default:
        return 'A platform error occurred: $code'; 
    }
  }
}