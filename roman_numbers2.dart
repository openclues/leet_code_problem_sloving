// Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

// Symbol       Value
// I             1
// V             5
// X             10
// L             50
// C             100
// D             500
// M             1000
// For example, 2 is written as II in Roman numeral, just two ones added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

// Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

// I can be placed before V (5) and X (10) to make 4 and 9.
// X can be placed before L (50) and C (100) to make 40 and 90.
// C can be placed before D (500) and M (1000) to make 400 and 900.
// Given a roman numeral, convert it to an integer.

// if first number is smaller than the next number, subtract the first number from the total

// Input: s = "MCMXCIV"
// Output: 1994
//total = 0
//for letter in the number
// if letter is bigger than the next letter then total = total + letter.
//else if letter is smaller than the next number then next number - the current one added to the total. and i ++ to skip to the next one

void main(List<String> args) {
  Solution solution = Solution();
  solution.romanToInt("MCMXCIV");
}

class Solution {
  int? romanToInt(String s) {
    List<String> romanNumber = s.split('');
    int total = 0;
    for (int i = 0; i < s.length; i++) {
      int value = romanNumberToInteger(romanNumber[i]);
      if (i == romanNumber.length - 1) {
        total = total + value;
      } else {
        int? nextValue = romanNumberToInteger(romanNumber[i + 1]);
        if (nextValue == null) {
          return total;
        }
        if (nextValue > value) {
          total = total + (nextValue - value);
          i++;
        } else {
          total = total + value;
        }
      }
    }
    return total;
  }
}

romanNumberToInteger(String letter) {
  switch (letter) {
    case "V":
      return 5;
    case "X":
      return 10;
    case "L":
      return 50;
    case "C":
      return 100;
    case "D":
      return 500;
    case "M":
      return 1000;
    case "I":
      return 1;
  }
}
