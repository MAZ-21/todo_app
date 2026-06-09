class FirebaseAuthExceptionHandling {
  static String getAuthenticationErrorMessages(String errorCode){
    switch(errorCode){
      case 'wrong-password':
        return 'this password is wrong try again.';
      case 'invalid-email':
        return 'this email address is invalid.';
      case 'weak-password':
        return 'this password is too short, try add punctuation and capital and small letters';
      default:
        return 'An unexpected error occured. Please try again later';
    }
  }
}