part of core;

class UserProfilePhoto extends StatefulWidget {
  static const double DEFAULT_CORNER_RADIUS = 10.0;

  final String imageUrl;
  final double size;
  final bool selected;

  UserProfilePhoto(
    this.imageUrl, {
    this.size = kDefaultPhotoSize,
    this.selected = false,
  });

  @override
  _UserProfilePhotoState createState() => _UserProfilePhotoState();
}

class _UserProfilePhotoState extends State<UserProfilePhoto> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: kMinPaddingValue,
        bottom: kMinPaddingValue,
        right: kDefaultPaddingValue,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: widget.selected
              ? Theme.of(context).accentColor
              : Theme.of(context).primaryColor,
          shape: BoxShape.rectangle,
          border: Border.all(
            color: widget.selected
                ? Theme.of(context).accentColor
                : Colors.transparent,
            width: 3,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(UserProfilePhoto.DEFAULT_CORNER_RADIUS),
          ),
        ),
        child: SizedBox(
          height: widget.size,
          width: widget.size,
          child: Image.asset(widget.imageUrl),
        ),
      ),
    );
  }
}
