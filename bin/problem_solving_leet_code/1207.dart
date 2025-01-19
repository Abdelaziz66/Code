class Solution {
  static bool uniqueOccurrences(List<int> arr) {
    arr.sort();
    List<int> index = [];
    for (int i = 0; i < arr.length; i++) {
      if (i == 0) {
        index.add(1);
      } else if (arr[i] == arr[i - 1]) {
        index[index.length - 1]++;
      } else {
        index.add(1);
      }
    }
    return index.toSet().length == index.length;
  }
}
