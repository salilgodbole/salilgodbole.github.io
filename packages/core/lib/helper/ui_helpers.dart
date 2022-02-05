part of core;

/// Contains useful functions to reduce boilerplate code
class UIHelper {
  // Vertical spacing constants. Adjust to your liking.
  static const double _VerticalSpaceSmallest = 5.0;
  static const double _VerticalSpaceSmall = 10.0;
  static const double _VerticalSpaceMedium = 20.0;
  static const double _VerticalSpaceLarge = 60.0;

  // Vertical spacing constants. Adjust to your liking.
  static const double _HorizontalSpaceSmallest = 5.0;
  static const double _HorizontalSpaceSmall = 10.0;
  static const double _HorizontalSpaceMedium = 20.0;
  static const double HorizontalSpaceLarge = 60.0;

  static EdgeInsetsGeometry defaultPadding() {
    return const EdgeInsets.all(10.0);
  }

  static EdgeInsetsGeometry defaultMediumPadding() {
    return const EdgeInsets.all(20.0);
  }

  /// Returns a vertical space with height set to [_VerticalSpaceSmall]
  static Widget verticalSpaceSmall({Color? color}) {
    return verticalSpace(_VerticalSpaceSmall, color: color);
  }

  static Widget verticalSpaceSmallest({Color? color}) {
    return verticalSpace(_VerticalSpaceSmallest, color: color);
  }

  /// Returns a vertical space with height set to [_VerticalSpaceMedium]
  static Widget verticalSpaceMedium({Color? color}) {
    return verticalSpace(_VerticalSpaceMedium, color: color);
  }

  /// Returns a vertical space with height set to [_VerticalSpaceLarge]
  static Widget verticalSpaceLarge({Color? color}) {
    return verticalSpace(_VerticalSpaceLarge, color: color);
  }

  /// Returns a vertical space equal to the [height] supplied
  static Widget verticalSpace(double height, {Color? color}) {
    return Container(
      height: height,
      color: color,
    );
  }

  static Widget horizontalSpaceSmallest({Color? color}) {
    return horizontalSpace(_HorizontalSpaceSmallest, color: color);
  }

  /// Returns a vertical space with height set to [_HorizontalSpaceSmall]
  static Widget horizontalSpaceSmall({Color? color}) {
    return horizontalSpace(_HorizontalSpaceSmall, color: color);
  }

  /// Returns a vertical space with height set to [_HorizontalSpaceMedium]
  static Widget horizontalSpaceMedium({Color? color}) {
    return horizontalSpace(_HorizontalSpaceMedium, color: color);
  }

  /// Returns a vertical space with height set to [HorizontalSpaceLarge]
  static Widget horizontalSpaceLarge({Color? color}) {
    return horizontalSpace(HorizontalSpaceLarge, color: color);
  }

  /// Returns a vertical space equal to the [width] supplied
  static Widget horizontalSpace(double width, {Color? color}) {
    return Container(
      width: width,
      color: color,
    );
  }

  static Widget defaultLabel(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.subtitle1,
    );
  }

  static Widget defaultText(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.caption?.copyWith(
            color:
                Theme.of(context).textTheme.headline6?.color?.withOpacity(0.90),
          ),
    );
  }

  static AppBar defaultAppBar(BuildContext context,
      {String? title,
      String? subTitle,
      TextStyle? titleTextStyle,
      TextStyle? subTitleTextStyle,
      List<Widget>? actions,
      bool showBackButton = false}) {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).primaryColor,
      leading: showBackButton ? BackButton(
          color: Theme.of(context).accentColor,
      ) : null,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title != null
              ? Text(
                  title,
                  style: titleTextStyle == null
                      ? Theme.of(context).textTheme.headline6
                      : titleTextStyle,
                )
              : kEmptyBox,
          subTitle != null
              ? Text(
                  subTitle,
                  style: titleTextStyle == null
                      ? Theme.of(context).textTheme.bodyText1
                      : subTitleTextStyle,
                )
              : kEmptyBox,
        ],
      ),
      actions: actions,
      actionsIconTheme: IconThemeData(color: Theme.of(context).accentColor),
    );
  }
}
