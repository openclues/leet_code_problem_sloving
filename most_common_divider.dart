void main(List<String> args) {
  print(mostCommonDivider(10, 4));
}

mostCommonDivider(int a, int b) {
  if (b == 0) {
    return a;
  } else {
    int result = (a / b).ceil();
    int reminder = a % b;
    return mostCommonDivider(result, reminder);
  }
}
