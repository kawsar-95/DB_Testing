



```java
// 1. Difference between max and second max
class MaxDiff {
    public static void main(String[] args) {
        int[] arr = {11,7,2,15,6};
        int max = -1, secondMax = -1;
        for (int i = 0; i < arr.length; i++) {
            if (arr[i] > max) {
                secondMax = max;
                max = arr[i];
            } else if (arr[i] > secondMax && arr[i] != max) {
                secondMax = arr[i];
            }
        }
        System.out.println("Difference: " + (max - secondMax)); // Output: 4
    }
}
```


```java
// 2. Sum of prime numbers
class SumPrime {
    public static void main(String[] args) {
        int[] arr = {11,7,2,15,6};
        int sum = 0;
        for (int i = 0; i < arr.length; i++) {
            if (isPrime(arr[i])) sum += arr[i];
        }
        System.out.println("Sum of primes: " + sum); // Output: 18
    }
    static boolean isPrime(int n) {
        if (n <= 1) return false;
        for (int i = 2; i <= n/2; i++) {
            if (n % i == 0) return false;
        }
        return true;
    }
}
```


```java
// 3. Sum of unique digits (remove duplicates)
class UniqueSum {
    public static void main(String[] args) {
        int[] arr = {11,7,7,11,2,15,6,6};
        int[] unique = new int[arr.length];
        int uniqueCount = 0;
        for (int i = 0; i < arr.length; i++) {
            boolean found = false;
            for (int j = 0; j < uniqueCount; j++) {
                if (arr[i] == unique[j]) {
                    found = true;
                    break;
                }
            }
            if (!found) unique[uniqueCount++] = arr[i];
        }
        int sum = 0;
        for (int i = 0; i < uniqueCount; i++) {
            sum += unique[i];
        }
        System.out.println("Sum of unique: " + sum); // Output: 41
    }
}
```


```java
// 4. Find missing number using formula
class MissingNumber {
    public static void main(String[] args) {
        int[] arr = {0,1,2,4,5};
        int n = 5;
        int total = n * (n + 1) / 2;
        int sum = 0;
        for (int i = 0; i < arr.length; i++) {
            sum += arr[i];
        }
        System.out.println("Missing number: " + (total - sum)); // Output: 3
    }
}
```


```java
// 5. Count the occurrence of each digit
class FrequencyCount {
    public static void main(String[] args) {
        int[] arr = {1,2,2,3,3,3,4,4,4,4};
        for (int i = 0; i < arr.length; i++) {
            boolean counted = false;
            for (int j = 0; j < i; j++) {
                if (arr[i] == arr[j]) {
                    counted = true;
                    break;
                }
            }
            if (!counted) {
                int count = 0;
                for (int j = 0; j < arr.length; j++) {
                    if (arr[i] == arr[j]) count++;
                }
                System.out.println(arr[i] + " = " + count);
            }
        }
    }
}
```


```java
// 6. Return repetitive digits
class Repetitive {
    public static void main(String[] args) {
        int[] arr = {1,2,3,4,4,5,6,6,7};
        for (int i = 0; i < arr.length; i++) {
            boolean counted = false;
            for (int j = 0; j < i; j++) {
                if (arr[i] == arr[j]) {
                    counted = true;
                    break;
                }
            }
            if (!counted) {
                int count = 0;
                for (int j = 0; j < arr.length; j++) {
                    if (arr[i] == arr[j]) count++;
                }
                if (count > 1)
                    System.out.println(arr[i]);
            }
        }
    }
}
```


```java
// 7. Unique characters and count from string
class UniqueChars {
    public static void main(String[] args) {
        String s = "abcaabbcc";
        String unique = "";
        for (int i = 0; i < s.length(); i++) {
            boolean found = false;
            for (int j = 0; j < unique.length(); j++) {
                if (s.charAt(i) == unique.charAt(j)) {
                    found = true;
                    break;
                }
            }
            if (!found) unique += s.charAt(i);
        }
        System.out.println("Unique characters: " + unique);
        System.out.println("Total unique characters: " + unique.length());
    }
}
```


```java
// 8. Print all permutations of string
class Permutations {
    public static void main(String[] args) {
        String str = "cat";
        permute(str.toCharArray(), 0);
    }
    static void permute(char[] arr, int index) {
        if (index == arr.length - 1) {
            System.out.println(new String(arr));
            return;
        }
        for (int i = index; i < arr.length; i++) {
            swap(arr, index, i);
            permute(arr, index + 1);
            swap(arr, index, i);
        }
    }
    static void swap(char[] arr, int i, int j) {
        char temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
    }
}
```


```java
// 9. Generate secure random password (basic version)
import java.util.Random;
class PasswordGenerator {
    public static void main(String[] args) {
        char[] caps = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
        char[] smalls = "abcdefghijklmnopqrstuvwxyz".toCharArray();
        char[] nums = "0123456789".toCharArray();
        char[] specials = "!@#$%^&*".toCharArray();
        char[] all = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*".toCharArray();


        char[] password = new char[8];
        Random rand = new Random();
        password[0] = caps[rand.nextInt(caps.length)];
        password[1] = smalls[rand.nextInt(smalls.length)];
        password[2] = nums[rand.nextInt(nums.length)];
        password[3] = specials[rand.nextInt(specials.length)];
        for (int i = 4; i < 8; i++) {
            password[i] = all[rand.nextInt(all.length)];
        }
        System.out.println("Random Password: " + new String(password));
    }
}
```


```java
// 10. Remove special characters from a string
class RemoveSpecial {
    public static void main(String[] args) {
        String s = "s@atur!day";
        String result = "";
        for (int i = 0; i < s.length(); i++) {
            char ch = s.charAt(i);
            if ((ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z'))
                result += ch;
        }
        System.out.println(result); // Output: saturday
    }
}
```


```java
// 11. Remove vowels
class RemoveVowel {
    public static void main(String[] args) {
        String s = "I am a SQA Engineer";
        String result = "";
        for (int i = 0; i < s.length(); i++) {
            char ch = Character.toLowerCase(s.charAt(i));
            if (ch != 'a' && ch != 'e' && ch != 'i' && ch != 'o' && ch != 'u')
                result += s.charAt(i);
        }
        System.out.println(result); // Output: m sq ngnr
    }
}
```


```java
// 12. Check if binary string
class IsBinary {
    public static void main(String[] args) {
        String input = "1001";
        boolean isBinary = true;
        for (int i = 0; i < input.length(); i++) {
            if (input.charAt(i) != '0' && input.charAt(i) != '1') {
                isBinary = false;
                break;
            }
        }
        System.out.println(isBinary); // true
    }
}
```


```java
// 13. Extract prices and calculate 15% discount
class DiscountCalc {
    public static void main(String[] args) {
        int laptop = 85000;
        int mouse = 2500;
        int total = laptop + mouse;
        double discount = total * 0.15;
        double finalPrice = total - discount;
        System.out.println("Final Price: " + finalPrice); // Output: 74250.0
    }
}
```


```java
// 14. Count notes from given amount
class CountNotes {
    public static void main(String[] args) {
        int[] notes = {1000,500,200,100,50,20,10,5,2,1};
        int amount = 546;
        for (int i = 0; i < notes.length; i++) {
            if (amount >= notes[i]) {
                int count = amount / notes[i];
                amount = amount % notes[i];
                System.out.println(notes[i] + " : " + count);
            }
        }
    }
}
```


```java
// 15. Question combination to make 100 marks using 5 and 10 mark questions
class QuestionMarks {
    public static void main(String[] args) {
        for (int ten = 0; ten <= 10; ten++) {
            for (int five = 0; five <= 20; five++) {
                if (ten * 10 + five * 5 == 100) {
                    System.out.println("10-mark: " + ten + ", 5-mark: " + five);
                }
            }
        }
    }
}





