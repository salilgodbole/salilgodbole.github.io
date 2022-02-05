part of core;

class DefaultRaisedButton extends StatelessWidget {
  final String title;
  final IconData? iconData;
  final Color? iconColor;
  final VoidCallback? onPressed;

  DefaultRaisedButton(this.title,
      {this.iconData, this.iconColor, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        elevation: 1,
        color: Theme.of(context).primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 12),
              ),
              UIHelper.horizontalSpace(4),
              iconData != null
                  ? Icon(
                      iconData,
                      color: iconColor != null
                          ? iconColor
                          : Theme.of(context).iconTheme.color,
                      size: 16,
                    )
                  : kEmptyBox,
            ],
          ),
        ),
      ),
    );
  }
}
