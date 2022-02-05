part of core;

class LoginScreenIllustration extends StatelessWidget {
  final double height;
  final double width;

  LoginScreenIllustration({this.height = 352, this.width = 356});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kMinDefaultPadding,
      child: Image.asset(
        "assets/images/illustrations/login_illustration.png",
        fit: BoxFit.contain,
        width: width,
        height: height,
      ),
    );
  }
}
