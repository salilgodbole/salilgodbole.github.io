part of core;

class StudentListItem extends StatelessWidget {
  final String name;

  StudentListItem(this.name);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 30,
              backgroundColor:
                  Colors.primaries[Random().nextInt(Colors.primaries.length)],
              child: Text(
                name.substring(0, 1),
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .apply(color: Colors.white),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              name,
              style: Theme
                  .of(context)
                  .textTheme
                  .headline5,
            ),
          ],
        ),
      ),
    );
  }
}
