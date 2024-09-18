void main(List<String> args) {
  List<int> numbers = [60, 1, 5, 4, 10, 50];
  print(fasterSolutionForPairWiseProduct(numbers));

  slowerSolution(numbers);

  print(maxPairWiseproduct(numbers));
}

maxPairWiseproduct(List<int> numbers) {
  if (numbers.length == 1) {
    return numbers.first;
  }
  numbers.sort((a, b) => b.compareTo(a));
  return numbers.first * numbers[1];
}

fasterSolutionForPairWiseProduct(List<int> numbers) {
  int maxnumber = 0;
  int index1 = 0;

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > maxnumber) {
      maxnumber = numbers[i];
      index1 = i;
    }
  }

  int maxnumber2 = 0;
  for (int j = 0; j < numbers.length; j++) {
    if (numbers[j] > maxnumber2 && j != index1) {
      maxnumber2 = numbers[j];
    }
  }

  return maxnumber2 * maxnumber;
}

slowerSolution(List<int> numbers) {
  int count = 0;
  for (int i = 0; i < numbers.length; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[i] * numbers[j] > count) {
        count = numbers[i] * numbers[j];
      }
    }
  }
  print(count);
  return count;
}
