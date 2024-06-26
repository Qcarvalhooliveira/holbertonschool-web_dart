<img src="https://github.com/Qcarvalhooliveira/holbertonschool-web_dart/blob/main/0x00-hello-dart/image/Dart-Hello.png" width="1000" height="400">

# **Dart - Hello Dart** :computer:

## **Description:**:speech_balloon:

* Dart is a versatile, class-based, object-oriented programming language developed by Google. It is designed for building high-performance applications across various platforms, including web, mobile, and server. Dart's syntax is similar to C, making it accessible to developers familiar with C-style languages. One of its most prominent uses is with the Flutter framework, which allows for the creation of natively compiled applications for mobile, web, and desktop from a single codebase. With features like strong typing, asynchronous programming, and a rich standard library, Dart provides a robust environment for modern application development.

## **Tasks** :books:

#### **0. Hello Holberton!**

Write a dart program that print Hello Holberton! followed by a new line.

* Use the function print

```
youssef@Holberton/Dart$ dart 0-hello_holberton.dart
Hello Holberton!

youssef@Holberton/Dart$
```

#### **1. The Quotes**

Write a Dart program that prints exactly "Programming is like building a multilingual puzzle,

* followed by a new line.

* Use the function print

```
youssef@Holberton/Dart$ dart 1-quotes.dart
"Programming is like building a multilingual puzzle

youssef@Holberton/Dart$
```

#### **2. Print Number**

Complete this source code in order to print the integer stored in the variable number, followed by Battery street, followed by a new line.

* The output of the script should be:
    * the number, followed by Battery street,
    * followed by a new line
* You are not allowed to cast the variable number into a string
* Your code must be 4 lines long

```
youssef@Holberton/Dart$ dart 2-print_number.dart
98 Battery street

youssef@Holberton/Dart$
```

#### **3. Print Doubles**

Complete this source code in order to print the doubles stored in the variable number with a precision of 2 digits.

* The output of the program should be:
    * Double: followed by the double with only 2 digits
    * followed by a new line

```
youssef@Holberton/Dart$ dart 3-print_double.dart
Double: 3.14

youssef@Holberton/Dart$
```

#### **4. Print string**

Complete this source code in order to print 3 times a string stored in the variable str, followed by its first 9 characters.

* The output of the program should be:
    * 3 times the value of str
    * followed by a new line and the 9 first characters of str
    * followed by a new line
* You are not allowed to use any loops or conditional statement
* Your program should be maximum 5 lines long

```
youssef@Holberton/Dart$ dart 4-print_string.dart > output 
youssef@Holberton/Dart$ cat -e output
Holberton SchoolHolberton SchoolHolberton School$
Holberton$
$
youssef@Holberton/Dart$
```

#### **5. Assertion**

Complete this source code in order to make it check if the number is bigger or equal to 80 print You Passed otherwise the output should be Uncaught Error: Assertion failed: "The score must be bigger or equal to 80

* You are not allowed to use IF/ELSE

```
youssef@Holberton/Dart$ dart --enable-asserts 5-assertion.dart 79
Unhandled exception:
'file:/youssef@Holberton/Dart/5-assertion.dart': Failed assertion: line 3 pos 10: 'nb >= 80': The score must be bigger or equal to 80
#0      _AssertionError._doThrowNew (dart:core-patch/errors_patch.dart:51:61)
#1      _AssertionError._throwNew (dart:core-patch/errors_patch.dart:40:5)
#2      main (file:/youssef@Holberton/Dart/5-assertion.dart:3:10)
#3      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:295:32)
#4      _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:192:12)

youssef@Holberton/Dart$ dart --enable-asserts 5-assertion.dart 80
You Passed
youssef@Holberton/Dart$ 
```

#### **6. Positive anything is better than negative nothing**

Write a dart Program That given an argument ,determine if its positive or negative

* The variable number will store as a string you should converted to integer
* The output of the program should be:

* The number, followed by
    * if the number is greater than 0: is positive
    * if the number is 0: is zero
    * if the number is less than 0:is negative

```
youssef@Holberton/Dart$ dart 6-positive_or_negative.dart -4
-4 is negative
youssef@Holberton/Dart$ dart 6-positive_or_negative.dart 0
0 is zero
youssef@Holberton/Dart$ dart 6-positive_or_negative.dart -3
-3 is negative
youssef@Holberton/Dart$ dart 6-positive_or_negative.dart 10
10 is positive
youssef@Holberton/Dart$ dart 6-positive_or_negative.dart 6
6 is positive
youssef@Holberton/Dart$ dart 6-positive_or_negative.dart -10
-10 is negative
youssef@Holberton/Dart$
```

## **Author** :black_nib:

* **Queise Carvalho de Oliveira** - [Linkedin](https://www.linkedin.com/in/queise-carvalho-de-oliveira-50359749/)


## License :page_with_curl:
This project is licensed under the [MIT License](https://opensource.org/license/mit/).
