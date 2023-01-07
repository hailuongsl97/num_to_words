import 'package:num_to_words/src/convert.dart';

class NumberToWordVI implements Convert {
  // NumberToWordVI._();
  @override
  String numberToWord(number) {
    // TODO: implement numberToWord
    // _convertLessThanOneHundred(number);

    throw UnimplementedError();
  }

  static const String _zero = 'Không'; //0
  static const String _hundred = 'Trăm'; //100
  static const String _thousand = 'Ngàn'; //1000
  static const String _million = 'Triệu'; //1000 000
  static const String _billion = 'Tỷ';

  // handle number <20
  static List<String> numberNames = [
    'Một',
    'Hai',
    'Ba',
    'Bốn',
    'Năm',
    'Sáu',
    'Bảy',
    'Tám',
    'Chín',
    'Mười',
    'Mười Một',
    'Mười Hai',
    'Mười Ba',
    'Mười Bốn',
    'Mười Năm',
    'Mười Sáu',
    'Mười Bảy',
    'Mười Tám',
    'Mười Chín',
  ];
  // less than ten (if number >100 and dozens <10 )
  static List<String> lessTenNames = [
    'Lẻ Một',
    'Lẻ Hai',
    'Lẻ Ba',
    'Lẻ Bốn',
    'Lẻ Năm',
    'Lẻ Sáu',
    'Lẻ Bảy',
    'Lẻ Tám',
    'Lẻ Chín',
    'Lẻ Mười',
  ];
  static List<String> tenNames = [
    'Mười',
    'Hai Mươi',
    'Ba Mươi',
    'Bốn Mươi',
    'Năm Mươi',
    'Sáu Mươi',
    'Bảy Mươi',
    'Tám Mươi',
    'Chín Mươi',
  ];


// 78
// 101
// 120
// 1001
// 1221
// 

   int countAmountDigits(int number){
    int i = 1;
    var _number = number;
    // 321
    // 11
    while(_number >=10){
        _number =(_number/10).round();
        i++;
    }
    return i;
    
  }

    String test(String a){

      return a;
    }
  String convertLessThanOneHundred(int number,
      [bool isLastThreeDigits = false]) {
        // number <100
    if (isLastThreeDigits) {
      if (number < 20) {
        return numberNames[number - 1];
      } else {
        int dozens = number ~/ 10;
        int unit = number % 10;
        String result = tenNames[dozens] + lessTenNames[unit];
        return result;
      }
    }
    else{
      // int hundred = number ~/ 

    }


    return '';
    // String soFar = '';

    // if (number % 100 < 20) {
    //   soFar = _numNames[number % 100];
    //   number = (number ~/ 100).toInt();
    // } else {
    //   final int numFirst = number;
    //   soFar = _numNames[number % 10];
    //   number = (number ~/ 10).toInt();
    //   final String unionSeparator =
    //       ((number ~/ 10).toInt() != 0 && numFirst % 10 != 0) ||
    //               (numFirst % 10 != 0 && numFirst < 100)
    //           ? _unionSeparator
    //           : '';
    //   soFar = _tensNames[number % 10] + unionSeparator + soFar;
    //   number = (number ~/ 10).toInt();
    // }
    // if (number == 0) {
    //   return soFar;
    // }
    // return _numNames[number] + ' $_hundred ' + soFar;
  }
}
