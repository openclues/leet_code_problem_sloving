multibly(int a, int b) {
  int result = 0;
  if (a == 0 || b == 0) {
    return 0;
  } else if (a == 1) {
    return b;
  } else if (b == 1) {
    return a;
  } else {
    for (int i = 0; i < b; i++) {
      result += a;
    }
    return result;
  }
}

void main(List<String> args) {
  print(multibly(10, 443));
}
