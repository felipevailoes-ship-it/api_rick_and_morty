import 'package:flutter/cupertino.dart';

class CharactersRickMorty extends StatelessWidget {
  final String image;
  final double width;
  CharactersRickMorty({
    required this.image,
    required this.width
});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Hero(
        tag: image,
        child: Image.asset(
          image,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace){
            return Image.asset(
              'assets/imagens/not-found.png',
              fit: BoxFit.contain
            );
          },
        )
      ),
    );
  }
}