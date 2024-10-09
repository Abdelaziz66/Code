List<int> selectionSort({required List<int> list}) {
  if (list.isNotEmpty) {
    for (int i = 0; i < list.length; i++) {
      int maxIndex = i;
      int temp;
      for (int j = i + 1; j < list.length; j++) {
        if (list[maxIndex] < list[j]) {
          maxIndex = j;
        }
      }
      temp = list[i];
      list[i] = list[maxIndex];
      list[maxIndex] = temp;
    }
    return list;
  } else {
    return list;
  }
}

void callSelectionSort() {
  print(selectionSort(list: [5, 7, 6, 42, 5, 7, 1, 2, 3]));
}
