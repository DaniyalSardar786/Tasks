class CustomExceptionHandling implements Exception {
  final String message;
  final int code;

  CustomExceptionHandling(this.message, this.code);
  String toString() {
    return 'CustomException: $message (Error Code: $code)';
  }
}

void main() {
  try {
    throw CustomExceptionHandling("Data not recieved from server", 404);
  } catch (e) {
    print(e);
  }
}
