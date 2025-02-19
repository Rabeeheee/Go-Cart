class TFormatException implements Exception {
  final String? details; 

  const TFormatException([this.details]);

  String get message {
    if (details != null) {
      return 'Invalid data format: $details';
    }
    return 'Invalid data format.';
  }
}
