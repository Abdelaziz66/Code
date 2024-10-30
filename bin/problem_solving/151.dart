class Solution {
static  String reverseWords(String s) {
    // Trim the input string to remove leading and trailing spaces
    List<String> words = s.trim().split(RegExp(r'\s+'));

    String out = '';

    for (int i = words.length - 1; i > 0; i--) {
      out += '${words[i]} ';
    }

    return out + words[0];
  }
}

