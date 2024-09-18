import 'dart:collection';

List<int> l1 = [1, 1, 1, 1];
List<int> l2 = [4, 5, 7, 2];

final class EntryItem extends LinkedListEntry<EntryItem> {
  final int value;

  EntryItem({required this.value});
}

void main(List<String> args) {
  var linkedList1 = convertToLinkedList(l1);
  var linkedList2 = convertToLinkedList(l2);
  var results = LinkedList<EntryItem>();

  // Nested loop to add combined values to the results linked list
  for (var item = linkedList1.first; item != null; item = item.next!) {
    for (var item2 = linkedList2.first; item2 != null; item2 = item2.next!) {
      results.add(EntryItem(value: item2.value + item.value));
    }
  }

  // Print results
  printLinkedList(results);
}

// Converts list of integers to a linked list
LinkedList<EntryItem> convertToLinkedList(List<int> nums) {
  var list = LinkedList<EntryItem>();

  for (var num in nums) {
    list.add(EntryItem(value: num));
  }
  return list;
}

// Helper function to print the linked list
void printLinkedList(LinkedList<EntryItem> linkedList) {
  for (var item = linkedList.first; item != null; item = item.next!) {
    print(item.value);
  }
}

class Stack<E> {
  List<E> _list = [];

  //push

  E push(E) {
    _list.add(E);
    return E;
  }

  E pop(E) {
    _list.removeLast();
    return E;
  }

  int size() {
    return _list.length;
  }

  E top() {
    return _list.last;
  }

  bool isEmpty() {
    return _list.isEmpty;
  }
}
