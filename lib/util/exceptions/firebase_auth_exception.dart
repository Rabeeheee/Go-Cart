class TFirebaseAuthException implements Exception{

  final String code;

  TFirebaseAuthException(this.code);


  String get message{
    switch (code){
      case 'email-already in use':
      return 'the email is already registered. please use a different email';
      case 'invalid email':
      return 'the email address provided is invalid. please enter a valid email';
      case 'weak password':
      return 'the password is too weak . please choose a strong password';
      case 'user disabled':
      return 'the user account has been disabled. please contact support for assistance';
      case 'user not found':
      return 'Invalid login details user not found';
      case 'wrong password':
      return 'Incorrect password. please check your password and try again';
      case 'Invalid verification code':
      return 'invalid verification id please request for a new verification id';
      case 'quota exceeded':
      return 'quota exceeded. please try again later';
      case 'email already exists':
       return 'quota exceeded. please try again later';
      case 'provider already linked':
      return 'the account is already linked with another provider.';
      case 'requires recent login':
      return 'this operation is sensitive and requires recent authentication. please login again.';
      default:
      return 'something went wrong';
    }
  }
}