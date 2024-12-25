ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

// l1 = [2,4,3], l2 = [5,6,4]

// ListNode.value = 2, ListNode.next = 4
ListNode? orderReversedListNode(ListNode l) {
  while (l.next != null) {
    l.next = l;
    l.val = l.next!.val;
  }
  return l;
}

void main(List<String> args) {}
