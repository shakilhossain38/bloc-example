extension NumberConverter on num {


  static const Map<String, String> banglaDigits = <String, String>{
    '0': '০',
    '1': '১',
    '2': '২',
    '3': '৩',
    '4': '৪',
    '5': '৫',
    '6': '৬',
    '7': '৭',
    '8': '৮',
    '9': '৯',
  };

  String toBanglaDigits() {
    final number = toString();
    final stringBuffer = StringBuffer();
    for (var i = 0; i < number.length; i++) {
      stringBuffer.write(banglaDigits[number[i]] ?? number[i]);
    }
    return stringBuffer.toString();
  }
}
