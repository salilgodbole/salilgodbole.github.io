part of core;

class DefaultTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextStyle? style;
  final bool autofocus;
  final bool obscureText;
  final int maxLines;
  final int minLines;
  final bool readOnly;
  final int maxLength;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final bool enabled;

  DefaultTextField(
      {this.labelText = '',
      this.controller,
      this.focusNode,
      this.keyboardType,
      this.textInputAction,
      this.style,
      this.autofocus = false,
      this.obscureText = false,
      this.maxLines = 1,
      this.minLines = 1,
      this.readOnly = false,
      this.maxLength = 30,
      this.onChanged,
      this.onEditingComplete,
      this.onSubmitted,
      this.inputFormatters,
      this.enabled = true});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Theme.of(context).textTheme.subtitle2!.copyWith(
          fontFamily: "Circular Std Book", fontWeight: FontWeight.normal),
      decoration: InputDecoration(
        border: InputBorder.none,
        labelText: labelText.toUpperCase(),
        labelStyle:
            Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12),
        filled: true,
        fillColor: Theme.of(context).primaryColor,
      ),
      controller: controller,
      focusNode: focusNode,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      inputFormatters: inputFormatters,
      minLines: minLines,
      maxLines: maxLines,
      maxLength: maxLength,
      obscureText: obscureText,
      autofocus: autofocus,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      enabled: enabled,
      readOnly: readOnly,
    );
  }
}
