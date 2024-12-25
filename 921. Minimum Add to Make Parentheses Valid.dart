int minAddToMakeValid(String s) {
  int balance = 0; // To track unmatched opening parentheses
  int additions = 0; // To track how many parentheses we need to add

  for (int i = 0; i < s.length; i++) {
    if (s[i] == '(') {
      balance++; // An opening parenthesis, expect a closing one
    } else {
      balance--; // A closing parenthesis, try to match an opening one
      if (balance < 0) {
        additions++; // Too many closing parentheses, need an opening one
        balance = 0; // Reset the balance after adding
      }
    }
  }

  // In the end, balance will count unmatched opening parentheses
  return additions + balance;
}

void main() {
  String test = "()))((";
  print(minAddToMakeValid(test)); // Output: 4
}
