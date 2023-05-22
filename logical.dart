


Write a program to generate all possible permutations of a given string.
E.g Input string : “ABC”
Output strings : “ABC”, “ACB”, “BAC”, “BCA”, “CBA”, “CAB”

List<String> permutations(String string) {
  // Base case: if the string has only one character, return it as a single permutation
  if (string.length == 1) {
    return [string];
  }

  // Recursive case: generate permutations by selecting each character in the string
  // and appending it to the permutations of the remaining characters
  List<String> result = [];
  for (int i = 0; i < string.length; i++) {
    String char = string[i];
    String remainingChars = string.substring(0, i) + string.substring(i + 1);
    List<String> perms = permutations(remainingChars);
    for (String perm in perms) {
      result.add(char + perm);
    }
  }

  return result;
}

void main() {
  String inputString = "ABC";
  List<String> permutationsList = permutations(inputString);
  for (String permutation in permutationsList) {
    print(permutation);
  }
}









Write a program to find the first non-repeating character in a given string.
E.g Input “Ahmedabad”
Output should be : “h”

String findFirstNonRepeatingCharacter(String string) {
  Map<String, int> characterCount = {};

  // Count the occurrences of each character in the string
  for (int i = 0; i < string.length; i++) {
    String char = string[i];
    if (characterCount.containsKey(char)) {
      characterCount[char]++;
    } else {
      characterCount[char] = 1;
    }
  }

  // Find the first character with a count of 1
  for (int i = 0; i < string.length; i++) {
    String char = string[i];
    if (characterCount[char] == 1) {
      return char;
    }
  }

  // If no non-repeating character is found, return an empty string
  return '';
}

void main() {
  String inputString = "Ahmedabad";
  String firstNonRepeatingChar = findFirstNonRepeatingCharacter(inputString);
  print('First non-repeating character: $firstNonRepeatingChar');
}







Write a program to remove duplicates from an array of integers without using the array_unique function.
List<int> removeDuplicates(List<int> array) {
  List<int> result = [];
  Set<int> seen = {};

  for (int num in array) {
    if (!seen.contains(num)) {
      result.add(num);
      seen.add(num);
    }
  }

  return result;
}

void main() {
  List<int> inputArray = [1, 2, 3, 4, 2, 1, 5, 6, 3, 7];
  List<int> uniqueArray = removeDuplicates(inputArray);
  print('Array with duplicates removed: $uniqueArray');
}






Write a program to find the sum of all odd numbers between two given numbe
int sumOfOddNumbers(int start, int end) {
  int sum = 0;

  // Ensure the start number is odd
  if (start % 2 == 0) {
    start++;
  }

  // Iterate through the range and add each odd number to the sum
  for (int num = start; num <= end; num += 2) {
    sum += num;
  }

  return sum;
}

void main() {
  int startNumber = 1;
  int endNumber = 10;
  int sum = sumOfOddNumbers(startNumber, endNumber);
  print('Sum of odd numbers between $startNumber and $endNumber: $sum');
}



