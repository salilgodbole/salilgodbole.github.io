part of core;

class HorizontalProgressBar extends StatefulWidget {
  final double endValue;

  HorizontalProgressBar([this.endValue = 1.0]);

  @override
  HorizontalProgressBarState createState() => new HorizontalProgressBarState();
}

class HorizontalProgressBarState extends State<HorizontalProgressBar>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween(begin: 0.0, end: widget.endValue).animate(controller!)
      ..addListener(() {
        setState(() {});
      });

    controller!.forward(from: 0.0);
  }

  @override
  void dispose() {
    controller!.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      backgroundColor: Theme.of(context).accentColor.withOpacity(0.1),
      minHeight: 4,
      value: animation!.value,
    );
  }
}
