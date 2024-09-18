// import 'dart:t'

import 'dart:math';

maxPairWisepRODUCT(
  List<int> listNumber,
) {
  int result = 0;

  for (int i = 0; i < listNumber.length; i++) {
    for (int j = i + 1; j < listNumber.length; j++) {
      if (listNumber[i] * listNumber[j] > result) {
        result = listNumber[i] * listNumber[j];
      }
    }
  }
  return result;
}

void main(List<String> args) {
  List<int> numberList = [2, 9, 4, 1, 9];

  createStressTestForTheFunctions(numberList);
  final stopwatch = Stopwatch()..start();

  print(maxPairWisepRODUCT(numberList));
  print("excution time for the first " +
      stopwatch.elapsed.inMicroseconds.toString());
  final stopwatcsh2 = Stopwatch()..start();
  print(fasterSolutionForPairWiseProduct(numberList));
  print("excution time for the fast " +
      stopwatcsh2.elapsed.inMicroseconds.toString());

  final stopwatcsh3 = Stopwatch()..start();

  print(findThehighestNumber(numberList));
  print("excution time for the two eparate " +
      stopwatcsh3.elapsed.inMicroseconds.toString());
}

findThehighestNumber(List<int> numberlist) {
  if (numberlist.length == 2 && (numberlist.first == 0 || numberlist[1] == 0)) {
    return 0;
  }

  int index1 = 0;
  int result1 = 0;
  for (int i = 0; i < numberlist.length; i++) {
    if (numberlist[i] > result1) {
      result1 = numberlist[i];
      index1 = i;
    }
  }
  int result2 = 0;
  for (int i = 0; i < numberlist.length; i++) {
    if (numberlist[i] > result2 && i != index1) {
      result2 = numberlist[i];
    }
  }
  return result2 * result1;
}

fasterSolutionForPairWiseProduct(List<int> numberslist) {
  numberslist.sort((a, b) => b.compareTo(a));
  if (numberslist.isEmpty || numberslist.length == 1) {
    return 0;
  } else {
    return numberslist.first * numberslist[1];
  }
}

createStressTestForTheFunctions(testData) {
  int result1 = maxPairWisepRODUCT(testData);
  int result2 = fasterSolutionForPairWiseProduct(testData);
  int result3 = findThehighestNumber(testData);

  if (result3 != result1 && result1 != result2) {
    print("Wrong Answer ");
  } else {
    print("Everything is ok");
  }
  return;
}
