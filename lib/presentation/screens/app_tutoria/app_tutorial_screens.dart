import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String tittle;
  final String caption;
  final String imageUrl;

  SlideInfo(this.tittle, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
    'Busca la comida',
    'Aliquip aliquip consectetur proident magna nostrud nisi nisi do cillum ut nulla eu do incididunt.',
    'assets/images/1.png',
  ),
  SlideInfo(
    'Entrega rapida',
    'Exercitation elit pariatur labore nostrud eiusmod nostrud officia.',
    'assets/images/2.png',
  ),
  SlideInfo(
    'Disfurta la comida',
    'Labore dolore reprehenderit et culpa adipisicing officia nulla cillum.',
    'assets/images/3.png',
  ),
];

class AppTutorialScreens extends StatelessWidget {
  static const name = 'tutorial_app';

  const AppTutorialScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            physics: BouncingScrollPhysics(),
            children: slides
                .map(
                  (slideData) => _Slide(
                    tittle: slideData.tittle,
                    caption: slideData.caption,
                    imageUrl: slideData.imageUrl,
                  ),
                )
                .toList(),
          ),
          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              onPressed: () => context.pop(),
              child: Text('skip'),
            ),
          ),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String tittle;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.tittle,
    required this.caption,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final tittleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            SizedBox(height: 20),
            Text(tittle),
            SizedBox(height: 10),
            Text(caption, style: captionStyle),
          ],
        ),
      ),
    );
  }
}
