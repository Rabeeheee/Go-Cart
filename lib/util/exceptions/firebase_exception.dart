class TFirebaseException implements Exception {
  final String code;

  TFirebaseException(this.code);

  String get message {

    switch (code) {
      case 'permission-denied':
        return 'You do not have permission to perform this action.';
      case 'unavailable': 
        return 'The server is currently unavailable. Please try again later.';
      case 'weak-password': 
        return 'The password given is too weak.';
      case 'email-already-in-use':
        return 'The account already exists for that email.';
      case 'invalid-email':
        return 'The email address is malformed.';
      case 'user-not-found':
        return 'No user found for the given email or UID.';
      case 'wrong-password':
        return 'Incorrect password. Please check your password and try again.';
      default:
        return 'An unknown Firebase error occurred: $code'; 
    }
  }
}
