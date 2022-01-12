import 'package:flutter/cupertino.dart';

class CardProvider extends ChangeNotifier {
  String cardName = '';
  String cardNumber = '';
  onChangeCardName(String value) {
    cardName = value;
    notifyListeners();
  }

  onChangeCardNumber(String value) {
    cardNumber = value;
    notifyListeners();
  }
}
