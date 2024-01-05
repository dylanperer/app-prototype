import 'dart:ffi';

class AppHelper {
  AppHelper._();

  static String? leftPadIntZeroToNine(int? value) {
    if (value == null) {
      return null;
    }

    if (value < 0 || value > 9) {
      return value.toString();
    }

    return '0${value.toString()}';
  }

  static String convertIntToWords(int number) {
    if (number < 0 || number > 1000) {
      return number.toString();
    }

    if (number == 0) {
      return "Zero";
    }

    List<String> units = [
      "", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"
    ];

    List<String> teens = [
      "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen",
      "Seventeen", "Eighteen", "Nineteen"
    ];

    List<String> tens = [
      "", "", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"
    ];

    if (number < 10) {
      return units[number];
    } else if (number < 20) {
      return teens[number - 10];
    } else if (number < 100) {
      return "${tens[number ~/ 10]}${(number % 10 > 0) ? " ${units[number % 10]}" : ""}";
    } else if (number < 1000) {
      return "${units[number ~/ 100]} Hundred${(number % 100 > 0) ? " and ${convertIntToWords(number % 100)}" : ""}";
    } else {
      return "One Thousand";
    }
  }

  static String convertPlurals(String word, int count, [String? postfix]){
    if(count == 1 || count < 0 || word.isEmpty){
        return "$word$postfix";
    }

    String context = word.substring(word.length -1 ).toLowerCase();

    if(context == 'y'){
      return "${word.substring(0, word.length -1 )}ies$postfix";
    }else{
      return "${word.substring(0, word.length)}s$postfix";
    }
  }
}
