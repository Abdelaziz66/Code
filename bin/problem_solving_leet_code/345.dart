import 'dart:math';

class Solution {
 static String reverseVowels(String s) {
    int right=s.length-1;
    int left=0;


      while(left<right){
        if(s[left]=='a'||s[left]=='e'||s[left]=='i'||s[left]=='o'||s[left]=='u'||s[left]=='A'||s[left]=='E'||s[left]=='I'||s[left]=='O'||s[left]=='U'){
          while(left<right){
            if(s[right]=='a'||s[right]=='e'||s[right]=='i'||s[right]=='o'||s[right]=='u'||s[right]=='A'||s[right]=='E'||s[right]=='I'||s[right]=='O'||s[right]=='U') {
              var temp=s[left];
              s=s.substring(0, left) + s[right] + s.substring(left + 1);              s[right] == s[left];
              s=s.substring(0, right) + temp + s.substring(right + 1);              s[right] == s[left];
              right--;
              left++;
              break;
            }else{
              right--;
            }
            }
        }else{
          left++;
        }
      }



   return s;

  }
}

