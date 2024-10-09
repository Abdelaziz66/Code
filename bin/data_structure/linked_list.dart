



class Data {
  String? name;
  Data({required this.name});
}

class Node {
  Data? data;
  Node? next;

  Node(this.data, this.next);
}

class LinkedList {
  Node? head;

  void insertToLinkedList({required Data data}) {
    Node newNode = Node(data, null);  // Create a new node
    if (head == null) {
      head = newNode;
    } else {
      Node? pointer = head;
      while (pointer?.next != null) {
        pointer = pointer?.next;
      }
      pointer?.next = newNode;
    }
  }

  void deleteElementLinkedList({required Data data}) {
    if (head == null) {
      return;
    }

    Node? pointer = head;
    Node? prevPointer;

    if (head?.data?.name == data.name) {
      head = head?.next;
      return;
    }
    while (pointer != null) {
      if (pointer.data?.name == data.name) {
        prevPointer?.next = pointer.next;
        return;
      }

      prevPointer = pointer;
      pointer = pointer.next;
    }
  }

  void editToLinkedList({required Data data,required Data newData}) {
    if (head == null) {
      return;
    }
    Node? pointer = head;
    while (pointer != null) {
      if (pointer.data?.name == data.name) {
        pointer.data = newData;
        return;
      }
      pointer = pointer.next;
    }
  }

  void printList() {
    Node? pointer = head;
    while (pointer != null) {
      print(pointer.data?.name);
      pointer = pointer.next;
    }
  }
}

void callLinkedList(){
  LinkedList list = LinkedList();

  list.insertToLinkedList(data: Data(name: "Node 1"));
  list.insertToLinkedList(data: Data(name: "Node 2"));
  list.insertToLinkedList(data: Data(name: "Node 3"));
  // list.printList();
  // list.deleteElementLinkedList(data: Data(name: "Node 3"));
  list.editToLinkedList(data: Data(name: "Node 3"), newData:  Data(name: "Node 33"),);
  print('---------------');
  list.printList();
}