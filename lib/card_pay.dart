import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myjourney_flutter/pay.dart';

class CardPay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          CardNumberFormatter(),
        ],
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "Assets/images/cardpay.png",
              height: 30,
              width: 30,
            ),
          ),
          suffixIcon: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Change',
              style: TextStyle(color: Colors.green),
            ),
          ),
          border: const OutlineInputBorder(),
          hintText: 'XXXX XXXX XXXX XXXX',
          labelText: 'Card Number',
        ),
        maxLength: 19,
        onChanged: (value) {},
      ),
    );
  }
}

class CardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue previousValue,
    TextEditingValue nextValue,
  ) {
    var inputText = nextValue.text;

    if (nextValue.selection.baseOffset == 0) {
      return nextValue;
    }

    var bufferString = StringBuffer();
    for (int i = 0; i < inputText.length; i++) {
      bufferString.write(inputText[i]);
      var nonZeroIndexValue = i + 1;
      if (nonZeroIndexValue % 4 == 0 && nonZeroIndexValue != inputText.length) {
        bufferString.write(' ');
      }
    }

    var string = bufferString.toString();
    return nextValue.copyWith(
      text: string,
      selection: TextSelection.collapsed(
        offset: string.length,
      ),
    );
  }
}
