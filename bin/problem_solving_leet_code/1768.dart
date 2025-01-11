class Solution {
   static String mergeAlternately(String word1, String word2) {
     String? mergedString='';
     int max=0;
     int min=0;
     bool isMax=true;

     if(word1.length>word2.length){
       isMax=true;
       max=word1.length;
       min=word2.length;
     }else{
       isMax=false;

       max=word2.length;
       min=word1.length;

     }
     for (int i = 0; i < max; i++) {
       if(i<min){
         mergedString=mergedString!+word1[i]+word2[i];
         print(mergedString);
         print('----------');
       }else{
         isMax?mergedString=mergedString!+word1[i]:mergedString=mergedString!+word2[i];
       }


     }

     return mergedString!;
  }
}
