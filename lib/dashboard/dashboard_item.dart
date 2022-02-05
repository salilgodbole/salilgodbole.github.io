import 'package:core/core.dart';
import 'package:flutter/material.dart';

class DashboardItem extends StatelessWidget {
  final IconData? icon;
  final Color? iconColor;
  final String title;
  final String? subTitle;
  final TextStyle? subTitleStyle;

  const DashboardItem(this.icon, this.iconColor, this.title, this.subTitle,
      {Key? key, this.subTitleStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      padding: kDefaultPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon != null
              ? Icon(
                  icon,
                  size: 40,
                  color: iconColor ?? Theme.of(context).accentColor,
                )
              : kEmptyBox,
          kDefaultHorizontalSpace,
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.grey),
              ),
              subTitle != null
                  ? Text(
                      subTitle ?? '',
                      style: subTitleStyle ??
                          Theme.of(context).textTheme.subtitle2!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                    )
                  : kEmptyBox
            ],
          ),
        ],
      ),
    );
  }
}
