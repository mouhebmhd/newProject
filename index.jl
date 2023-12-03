public class Exercise1_1 {
    public static void main(String[] args) {
        int[] primeNumbers = new int[20];
        int count = 0;
        int num = 2;

        while (count < 20) {
            if (isPrime(num)) {
                primeNumbers[count] = num;
                count++;
            }
            num++;
        }

        // Display the prime numbers
        for (int prime : primeNumbers) {
            System.out.print(prime + " ");
        }
    }

    // Function to check if a number is prime
    public static boolean isPrime(int n) {
        if (n <= 1) {
            return false;
        }
        for (int i = 2; i <= Math.sqrt(n); i++) {
            if (n % i == 0) {
                return false;
            }
        }
        return true;
    }
}
public class Exercise1_2 {
    public static void main(String[] args) {
        int[] arr = {1, 2, 3, 4, 5}; // Example array
        int n = arr.length;

        // Reverse the array
        for (int i = 0; i < n / 2; i++) {
            int temp = arr[i];
            arr[i] = arr[n - i - 1];
            arr[n - i - 1] = temp;
        }

        // Display the reversed array
        for (int num : arr) {
            System.out.print(num + " ");
        }
    }
}
public class Exercise1_3 {
    public static void main(String[] args) {
        int[] numbers = {5, 10, 3, 7, 20}; // Example array
        int max = numbers[0];
        int min = numbers[0];
        double sum = 0;

        // Find max, min, and calculate sum
        for (int num : numbers) {
            if (num > max) {
                max = num;
            }
            if (num < min) {
                min = num;
            }
            sum += num;
        }

        double average = sum / numbers.length;

        System.out.println("Maximum: " + max);
        System.out.println("Minimum: " + min);
        System.out.println("Average: " + average);
    }
}

public class Exercise2_1 {
    public static void main(String[] args) {
        String sentence = "Count the number of words in this sentence"; // Example sentence
        String[] words = sentence.split("\\s+");

        int wordCount = words.length;
        System.out.println("Number of words: " + wordCount);
    }
}
public class Exercise2_2 {
    public static void main(String[] args) {
        String str = "madam"; // Example string
        boolean isPalindrome = checkPalindrome(str);

        if (isPalindrome) {
            System.out.println(str + " is a palindrome.");
        } else {
            System.out.println(str + " is not a palindrome.");
        }
    }

    public static boolean checkPalindrome(String str) {
        String reversed = "";
        for (int i = str.length() - 1; i >= 0; i--) {
            reversed += str.charAt(i);
        }
        return str.equalsIgnoreCase(reversed);
    }
}
