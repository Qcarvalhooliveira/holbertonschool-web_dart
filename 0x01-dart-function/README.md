<img src="https://github.com/Qcarvalhooliveira/holbertonschool-web_dart/blob/main/0x01-dart-function/image/Dart_function.png" width="1000" height="400">

# **Dart - Function** :computer:

## **Description:** :speech_balloon:

* A function in Dart is a set of statements that performs a specific task and can be called upon to execute when needed. Functions in Dart allow you to organize and modularize your code, making it reusable and easier to manage. They can take parameters, perform operations, and return results. Dart functions are defined using the void keyword if they do not return a value, or a specific return type if they do. Dart supports both named and anonymous functions, providing flexibility in how functions are used and implemented within a program.

## **Tasks** :books:

#### **0. Hello Function** 

Write a dart function helloFunction() that accepts one argument String and print Hello <str> from dart

* Function prototype :void helloFunction(String str)

```
Holberton@school:Dart$ cat 0-main.dart
import '0-hellofunc.dart';

void main() {
  helloFunction("Holberton");
}
Holberton@school:Dart$
Holberton@school:Dart$ dart 0-main.dart
Hello Holberton from dart
Holberton@school:Dart$
```

#### **1. Concatenate Strings**

Write a dart function concatStr() that accepts two arguments str1, str2.

* Function prototype : String concatStr(String str1, String str2)
* Leave space between str1 and str2

```
Holberton@school:Dart$ cat 1-main.dart
import '1-concat_strings.dart';

void main() {
  print(concatStr("Holberton", "School"));
}
Holberton@school:Dart$
Holberton@school:Dart$ dart 1-main.dart
Holberton School
Holberton@school:Dart$
```

#### **2. Add/Sub**

Write three functions in dart the first function add() that accepts two arguments a, b and return the sum. And the secode function sub() that accepts two arguments a, b and return Subtraction of them. The third function showFunc() that returns a message with the output of the two other function.

* First Function prototype : int add(int a, int b)
* Second Function prototype : int sub(int a, int b)
* Third Function prototype : String showFunc(int a, int b)

```
Holberton@school:Dart$ cat 2-main.dart
import '2-sumfunc.dart';

void main(List<String> args) {
  var a = int.parse(args[0]);
  var b = int.parse(args[1]);
  print(showFunc(a, b));
}
Holberton@school:Dart$
Holberton@school:Dart$ dart 2-main.dart 10 15
Add 10 + 15 = 25
Sub 10 - 15 = -5
Holberton@school:Dart$
```

#### **3. Factorial**

Write recursive function to compute the factorial of a positive integer fact()

* Function prototype : int fact(int f)
    * If f == 1 the function return 1
    * If f <= 0 return 1

```
Holberton@school:Dart$ cat 3-main.dart
import '3-factors.dart';

void main() {
  print(fact(0));
  print(fact(1));
  print(fact(5));
}


Holberton@school:Dart$
Holberton@school:Dart$ dart 3-main.dart
1
1
120
Holberton@school:Dart$
```

#### **4. Outer Inner**

Write two functions the first function outer() take two argument name, id and print the output of the inside function inner().

* Function prototype : void outer(String name, String id)
* Function prototype : String inner()
* name will always consist of two words

```
Holberton@school:Dart$ cat 4-main.dart
import '4-outer_inner.dart';

void main() {
  outer("Youssef Belhadj", "001");
}

Holberton@school:Dart$
Holberton@school:Dart$ dart 4-main.dart
Hello Agent B.Youssef your id is 001
Holberton@school:Dart$
```

#### **5. Calculate Area**

Create a function calculateArea() that accepts two variables height and base and returns the area of the triangle.

Function prototype : double calculateArea(double height, double base);

The result should be rounded to two decimal places

```
achref@achref:~$ cat 5-main.dart
import '5-calculate-area.dart';

main() {
  print(calculateArea(20,7));
  print(calculateArea(10,7));
  print(calculateArea(8.5,3.7));
}
achref@achref:~$
achref@achref:~$ dart 5-main.dart
70.0
35.0
15.73
achref@achref:~$
```

#### **6. Convert to fahrenheit**

Create a function convertToF() that accepts a list of doubles representing a list of temperatures in celsius, converts them to fahrenheit and returns them in a list.

Function prototype : List<double> convertToF(List<double> temperaturesInC);

To convert temperature from celsius to fahrenheit you need to multiply it by 9, followed by a division by 5 and finally add 32.

Let’s for example convert 25 degrees celsius : (25°C × 9/5) + 32 = 77°F You have to use the map method. All the results should be rounded to two decimal points.

```
achref@achref:~$ cat 6-main.dart
import '6-convert-to-fahrenheit.dart';

main() {
  print(convertToF([25, 26, 23, 27, 30]));
  print(convertToF([22.5, 26, 27.3, 23.6, 25]));
  print(convertToF([-4.2, -2, 0.5, -5, -1.7]));
}
achref@achref:~$
achref@achref:~$ dart 6-main.dart
[77.0, 78.8, 73.4, 80.6, 86.0]
[72.5, 78.8, 81.14, 74.48, 77.0]
[24.44, 28.4, 32.9, 23.0, 28.94]
achref@achref:~$
```

#### **7. Basketball Shots**

Given two maps that represents the number of successful shots for each shot type in a basketball game between team A and Team B.

Create a function whoWins() that calculates the total number of points for each team and return the winning team:

* If teamA points > teamB points return 1
* If teamA points < teamB points return 2
* If teamA points = TeamB points return 0

A free throw shot counts as 1 Point.

A 2 pointer shot counts as 2 Points.

A 3 pointer shot counts as 3 Points.

Function prototype : int whoWins(Map<String, int> teamA, Map<String, int> teamB);

```
achref@achref:~$ cat 7-main.dart
import '7-basketball-shots.dart';

main() {
  var teamA = {'Free throws' : 23, '2 pointers' : 32, '3 pointers': 16};
  var teamB = {'Free throws' : 31, '2 pointers' : 27, '3 pointers': 13};

  print(whoWins(teamA, teamB));
}
achref@achref:~$
achref@achref:~$ dart 7-main.dart
1
achref@achref:~$
```

#### **8. Longest Unique Substring**

Write a function longestUniqueSubstring() that accepts one argument String and returns the longest non-repeating substring.

Function prototype : String longestUniqueSubstring(String str);

If multiple substrings tie in length, return the one which occurs first.

```
achref@achref:~$ cat 8-main.dart
import '8-longest-unique-substring.dart';

main() {
  print(longestUniqueSubstring("abcacbd"));
  print(longestUniqueSubstring("aaaaaaaa"));
  print(longestUniqueSubstring("abcde"));
}
achref@achref:~$
achref@achref:~$ dart 8-main.dart
acbd
a
abcde
achref@achref:~$
```

#### **9. Palindrome**

Write a function isPalindrome() that accepts one argument String and returns True if the input String is a palindrome otherwise it returns False.

Function prototype: bool isPalindrome(String s); A palindrome is a sentence that reads the same backward or forward. If the length of the input string is less than 3 characters it doesn’t count as a palindrome.

```
achref@achref:~$ cat 9-main.dart
import '9-palindrome.dart';

main() {
  print(isPalindrome("aa"));
  print(isPalindrome("abcba"));
  print(isPalindrome("abcde"));
}
achref@achref:~$
achref@achref:~$ dart 9-main.dart
false
true
false
achref@achref:~$
```

#### **10. Longest Palindrome**

Write a function longestPalindrome() that accepts one argument String and returns the longest palindrome substring.

Function prototype : String longestPalindrome(String s);

A palindrome is a sentence that reads the same backward or forward. If the length of the input string is less than 3 characters it doesn’t count as a palindrome. You can use the function isPalindrome(). If the input string doesn’t contain any substrings return none.

```
achref@achref:~$ cat 10-main.dart
import '10-longest-palindrome.dart';

main() {
  print(longestPalindrome("abcde"));
  print(longestPalindrome("azeghjhg"));
  print(longestPalindrome("aaabvf"));
}
achref@achref:~$
achref@achref:~$ dart 10-main.dart
none
ghjhg
aaa
achref@achref:~$
```

## **Author** :black_nib:

* **Queise Carvalho de Oliveira** - [Linkedin](https://www.linkedin.com/in/queise-carvalho-de-oliveira-50359749/)


## License :page_with_curl:
This project is licensed under the [MIT License](https://opensource.org/license/mit/).
