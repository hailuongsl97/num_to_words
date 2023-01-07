import 'package:flutter_test/flutter_test.dart';

import 'package:num_to_words/num_to_words.dart';
import 'package:num_to_words/src/handle.dart';

void main() {
  test('adds one to input values', () {
    final calculator = NumberToWordVI();
    expect(calculator.countAmountDigits(113333), 2);

  });
}
