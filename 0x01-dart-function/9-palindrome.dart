bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }

  int left = 0;
  int right = s.length - 1;

  while (left < right) {
    if (s[left] != s[right]) {
      return false;
    }
    left++;
    right--;
  }

  return true;
}
