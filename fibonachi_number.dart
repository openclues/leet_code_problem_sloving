void main(List<String> args) {
  calculatFibonachi(4);
  print(fastercalculateFibonacci(4));
}

calculatFibonachi(int n) {
  List<int> results = [];
  for (int i = 0; i <= n; i++) {
    if (i == 0) {
      results.add(0);
    } else if (i == 1) {
      results.add(1);
    } else {
      results.add(results[i - 1] + results[i - 2]);
    }
  }
  print(results);
}

// 0 1 1 2 3 5

//on index 3  i - 2 + i -1

int fastercalculateFibonacci(int n) {
  if (n == 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  }

  int prev = 0;
  int current = 1;
  for (int i = 2; i <= n; i++) {
    int next = prev + current;
    prev = current;
    current = next;
  }

  return current;
}
