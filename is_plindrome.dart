bool isplindrome(int num) {
  String numString = num.toString();
  final reversedString = numString.split('').reversed.join('');
  if (numString == reversedString) {
    return true;
  }

  return false;
}

void main(List<String> args) {
  Stopwatch firstFunction = Stopwatch()..start();
  print(isplindrome(1111111111111111111));
  print(firstFunction.elapsed.inMicroseconds);
  print("////");
  Stopwatch secondFunction = Stopwatch()..start();

  print(newIsPlindrome(1111111111111111111));
  print(secondFunction.elapsed.inMicroseconds);
}

newIsPlindrome(int numbder) {
  if (numbder < 10) {
    return true;
  } else {
    List<String> digis = numbder.toString().split('');
    List<String> resultDigits = [];
    int current = 0;
    for (int i = digis.length - 1; i >= 0; i--) {
      resultDigits.insert(current, digis[i]);
      current++;
    }
    if (resultDigits.toString() == digis.toString()) {
      return true;
    } else {
      return false;
    }
  }
}
