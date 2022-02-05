part of core;

class RoundedWidget extends StatelessWidget {
  final Widget child;
  final double size;

  RoundedWidget(this.child, this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size * 1.3,
      height: size * 1.3,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(size),
        ),
        border: Border.all(
          color: Theme.of(context).accentColor,
          width: 2,
          style: BorderStyle.solid,
        ),
      ),
      child: child,
    );
  }
}
