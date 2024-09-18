class Node<E> {
  final E data;
  Node<E>? next;
  Node(this.data);
}

class LinkedListImpl<E> {
  Node<E>? head;

  inserAtHead(e) {
    Node<E> node = Node<E>(e);
    node.next = head;
    head = node;
  }

  first() {
    return head;
  }

  void insertAtEnd(E data) {
    // Create a new node with the given data
    Node<E> newNode = Node(data);

    // If the list is empty (head is null), set the new node as the head
    if (head == null) {
      head = newNode;
    } else {
      // If the list is not empty, traverse to the last node
      Node<E>? current = head;

      // Traverse until we find the last node (where current.next is null)
      while (current!.next != null) {
        current = current.next;
      }

      // Once we reach the last node, set its 'next' to the new node
      current.next = newNode;
    }
  }

  // ["islam", "ahmed"]

  void delete(E data) {
    // If the list is empty (head is null), print a message and return
    if (head == null) {
      print("There is nothing to delete");
      return;
    }

    // If the head node contains the data to be deleted
    if (head!.data == data) {
      // Update the head to point to the next node (removing the first node)
      head = head!.next;
      return;
    }

    // Start traversing from the head
    Node<E>? current = head;

    // Traverse the list until we find the node before the one to delete
    while (current!.next != null) {
      // If the next node contains the data to be deleted
      if (current.next!.data == data) {
        // Bypass the node by linking the current node's 'next' to the one after the next
        current.next = current.next!.next;
        return;
      }
      // Move to the next node in the list
      current = current.next;
    }

    // If we reach here, it means the data wasn't found
    print("Data not found in the list");
  }

  printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main(List<String> args) {
  LinkedListImpl<String> linkedListImpl = LinkedListImpl();
  linkedListImpl.inserAtHead("Islam");
  linkedListImpl.inserAtHead("Ahmed");
  linkedListImpl.insertAtEnd("Ibrahim");
  linkedListImpl.delete("Ahmed");
  linkedListImpl.printList();
}
