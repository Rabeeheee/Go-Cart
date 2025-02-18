class TFirebaseException implements Exception{
  final String code;

  TFirebaseException(this.code);

  String get message{
    switch(code){
      case 'permission-denied':
      return 'You do not have permission to perform this action';
      case 'unavailabe':
      return 'The server is currently unavailable to perform this action.';
      case 'Week-password':
      return 'The password given is too weak';
      case 'email-already in use':
      return 'The account already exists for that email';
      case 'invalid email':
      return 'The email address is malformed';
      default:
      return 'A firebase error occured. please try again';
    }
  }
}