part of core;

class RoundedStudentPhoto extends StatelessWidget {
  final String imageUrl;
  final double size;
  final String? assetUrl;

  RoundedStudentPhoto(this.imageUrl, this.size, {this.assetUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size),
        child: this.assetUrl == null ? Image.network(
          imageUrl,
          scale: 1,
          repeat: ImageRepeat.noRepeat,
        ) : Image.asset(
          assetUrl!,
          scale: 1,
          repeat: ImageRepeat.noRepeat,
        ),
      ),
    );
  }
}
