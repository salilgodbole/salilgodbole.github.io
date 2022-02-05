part of core;

class OnScreenKeyboard extends StatefulWidget {
  ValueChanged<String>? onKeyboardTextSubmitted;

  OnScreenKeyboard({this.onKeyboardTextSubmitted});

  @override
  _OnScreenKeyboardState createState() => _OnScreenKeyboardState();
}

class _OnScreenKeyboardState extends State<OnScreenKeyboard> {
  String _enteredText = '';

  static const Color BUTTON_BACKGROUND_COLOR =
      Color.fromRGBO(249, 249, 249, 100);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: UiUtils.getScreenWidth(context),
      padding: const EdgeInsets.only(
        bottom: 16,
      ),
      color: Theme.of(context).primaryColor,
      child: getKeyboardButtonsWidget(context),
    );
  }

  Widget getKeyboardButtonsWidget(BuildContext context) {
    int buttonValue = 1;
    List<Widget> keyboardButtons = [];
    keyboardButtons.add(getAnswerTextField(context));
    keyboardButtons.add(Divider(height: 1));

    for (int i = 1; i <= 4; i++) {
      List<Widget> rowChildren = [];
      for (int j = 1; j % 4 != 0; j++) {
        rowChildren.add(getKeyboardButtonForNumber(context, buttonValue));

        buttonValue++;
      }

      keyboardButtons.add(
        Row(
          children: rowChildren,
        ),
      );
    }

    return Column(
      children: keyboardButtons,
    );
  }

  Widget getAnswerTextField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kMinPaddingValue),
      child: Row(
        children: [
          Text(
            'Answer: ',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Expanded(
            child: Text(
              _enteredText,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ],
      ),
    );
  }

  Widget getKeyboardButtonForNumber(BuildContext context, int buttonValue) {
    if (buttonValue <= 9) {
      return Expanded(
        child: FlatButton(
          onPressed: () => onNumericKeyPressed(buttonValue),
          child: CircleAvatar(
              backgroundColor: isDarkTheme
                  ? Theme.of(context).primaryColor
                  : BUTTON_BACKGROUND_COLOR,
              child: Text(
                '$buttonValue',
                style: Theme.of(context).textTheme.subtitle1,
              )),
        ),
      );
    } else if (buttonValue == 10) {
      return Expanded(
        child: FlatButton(
          onPressed: () => onBackspacePressed(),
          child: Icon(
            Icons.backspace,
            color: Theme.of(context).accentColor,
            size: 24,
          ),
        ),
      );
    } else if (buttonValue == 11) {
      return Expanded(
        child: FlatButton(
          onPressed: () => onNumericKeyPressed(0),
          child: CircleAvatar(
              backgroundColor: isDarkTheme
                  ? Theme.of(context).primaryColor
                  : BUTTON_BACKGROUND_COLOR,
              child: Text(
                '0',
                style: Theme.of(context).textTheme.subtitle1,
              )),
        ),
      );
    } else {
      return Expanded(
        child: Container(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: FlatButton(
            onPressed: () => onSubmitButtonPressed(),
            color: Theme.of(context).accentColor,
            child: Icon(
              Icons.check,
              size: 28,
            ),
          ),
        ),
      );
    }
  }

  void onNumericKeyPressed(int value) {
    setState(() {
      _enteredText = _enteredText + value.toString();
    });
  }

  void onBackspacePressed() {
    String str = AppUtils.removeLastCharacter(_enteredText);
    setState(() {
      _enteredText = str;
    });
  }

  void onSubmitButtonPressed() {
    widget.onKeyboardTextSubmitted!(_enteredText);
  }
}
