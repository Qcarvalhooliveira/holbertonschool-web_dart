import '9-palindrome.dart';

String longestPalindrome(String s) {
  String longest = '';

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 3; j <= s.length; j++) {
      String substring = s.substring(i, j);
      if (isPalindrome(substring) && substring.length > longest.length) {
        longest = substring;
      }
    }
  }

  return longest.isEmpty ? 'none' : longest;
}
