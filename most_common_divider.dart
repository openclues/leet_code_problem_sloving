void main(List<String> args) {
  print(mostCommonDivider(234, 248));
}

int mostCommonDivider(int a, int b) {
  if (b == 0) {
    return a;
  } else {
    return mostCommonDivider(b, a % b);
  }
}
