class Student {
  Student._fromInternal();

  static final Student _instance = Student._fromInternal();

  factory Student() {
    return _instance;
  }
}
