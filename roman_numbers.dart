// I, V, X, L, C, D and M.
// Symbol       Value
// I             1
// V             5
// X             10
// L             50
// C             100
// D             500
// M             1000

// I can be placed before V (5) and X (10) to make 4 and 9.
// X can be placed before L (50) and C (100) to make 40 and 90.
// C can be placed before D (500) and M (1000) to make 400 and 900.

int romanToInt(String romanNum) {
  final data = {
    "I": 1,
    "V": 5,
    "X": 10,
    "L": 50,
    "C": 100,
    "D": 500,
    "M": 1000
  };

  int count = 0;
  List<String> romanNumChars = romanNum.split('');

  for (int i = 0; i < romanNumChars.length - 1; i++) {
    // If the current numeral is smaller than the next one, subtract its value
    if (data[romanNumChars[i]]! < data[romanNumChars[i + 1]]!) {
      count -= data[romanNumChars[i]]!;
    }
    // Otherwise, add its value
    else {
      count += data[romanNumChars[i]]!;
    }
  }

  // Add the last numeral
  count += data[romanNumChars.last]!;

  return count;
}

void main(List<String> args) {
  showAndCalculate(8);
}

class Student {
  final int id;
  final String name;

  Student({required this.id, required this.name});
}

showAndCalculate(int num) {
  List<int> ints = List.generate(8, (index) => index);
  int count = 0;

  add(
    int int,
  ) {
    count += int;
  }

  print(ints);
  ints.forEach(add);
  print(count);
}
