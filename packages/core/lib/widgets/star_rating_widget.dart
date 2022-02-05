part of core;

class StarRatingWidget extends StatefulWidget {
  final int rating;
  final int maxRating;

  StarRatingWidget({this.rating = 2, this.maxRating = 5});

  @override
  _StarRatingWidgetState createState() => _StarRatingWidgetState();
}

class _StarRatingWidgetState extends State<StarRatingWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: getStarIconsList(),
      ),
    );
  }

  List<Widget> getStarIconsList() {
    List<Widget> starIconsList = [];
    for (int i = 1; i <= widget.maxRating; i++) {
      starIconsList.add(getStarIcon(i <= widget.rating));
    }

    return starIconsList;
  }

  Widget getStarIcon(bool selected) {
    return Icon(
      Icons.star,
      size: 18,
      color: selected
          ? Theme.of(context).accentColor
          : Theme.of(context).dividerColor,
    );
  }
}
