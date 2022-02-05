part of core;

class DefaultDivider extends StatelessWidget {
  final double height;
  final double thickness;
  final Color? color;

  DefaultDivider({
    this.height = 20.0,
    this.thickness = 1,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: this.height,
      thickness: this.thickness,
      color: color == null ? Theme.of(context).primaryColor : color,
    );
  }
}
