int binarySearch({required List<int> list, required int key}) {
  if (list.isEmpty) {
    return -1;
  }else{
    int low = 0;
    int high = list.length - 1;
    int mid;
    while (low <= high) {
      mid = (high + low) ~/ 2;
      if (key == list[mid]) {
        return mid;
      } else if (key < list[mid]) {
        low = mid + 1;
      } else {
        high = mid - 1;
      }
    }
  }


  return -1;
}

void callBinarySearch() {
  var result= binarySearch(list:[20,15,10,5,3,2,1],key:1);
  print('binary search index result: $result');



}
