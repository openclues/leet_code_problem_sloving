void main(List<String> args) {
  reverseString("input");
}

reverseString(String input) {
  ['i', 'n', 'p', 'u', 't'];

  List<String> list = input.split('');
  List orderedList = [];

  for (int i = list.length - 1; i < list.length && i >= 0; i--) {
    orderedList.add(list[i]);
  }
  print(orderedList);
}
