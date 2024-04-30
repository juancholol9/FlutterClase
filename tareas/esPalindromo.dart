void main() {
  var palabra = "radar";

  bool isPalindrome(String x) {
    String revString = x.split('').reversed.join('');
    return x == revString;
  }

  print(isPalindrome(palabra));
}
