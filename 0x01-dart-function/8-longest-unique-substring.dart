String longestUniqueSubstring(String str) {
  int n = str.length;
  int maxLength = 0;
  int start = 0;
  int end = 0;
  String longestSubstring = "";
  Set<String> uniqueChars = {};

  while (end < n) {
    if (!uniqueChars.contains(str[end])) {
      uniqueChars.add(str[end]);
      end++;
      if (end - start > maxLength) {
        maxLength = end - start;
        longestSubstring = str.substring(start, end);
      }
    } else {
      uniqueChars.remove(str[start]);
      start++;
    }
  }

  return longestSubstring;
}
