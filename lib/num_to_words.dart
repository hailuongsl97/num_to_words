library num_to_words;

enum Language { vi, en }

class NumberToWord {
  NumberToWord._();
  static Language? _language;
  static NumberToWord getInstance(Language language) {
    _language = language;
    return NumberToWord._();
  }

  static get language => _language;
}

extension ConvertNumberToWord on int {
  String toWords() {
    if (Language.vi == NumberToWord.language) {
      return '';
    } else {
      return '';
    }
  }
}
