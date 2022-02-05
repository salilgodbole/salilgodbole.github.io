part of core;

class DefaultLabelField extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final bool capitalize;
  final TextAlign? textAlign;

  DefaultLabelField(this.text,
      {this.capitalize = false, this.style, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      capitalize ? text.toUpperCase() : text,
      textAlign: this.textAlign != null ? this.textAlign : TextAlign.left,
      style: this.style != null
          ? this.style
          : Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: primaryTextColor),
    );
  }
}
