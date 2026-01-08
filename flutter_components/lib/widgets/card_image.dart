import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CardImage extends StatelessWidget {
  const CardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      // Recorta lo que se salga del border radius
      clipBehavior: .antiAlias,
      shape: RoundedRectangleBorder(borderRadius: .circular(18)),
      elevation: 30,
      shadowColor: AppTheme.primary.withValues(alpha: 0.5),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(
              "https://www.ifam.es/colombia/wp-content/uploads/sites/13/2015/08/imagenes-de-paisajes-hermosos-4.jpg",
            ),
            placeholder: AssetImage("assets/jar-loading.gif"),
            fit: .contain,
            width: .infinity,
            fadeInDuration: Duration(milliseconds: 300),
            height: 250,
          ),
        ],
      ),
    );
  }
}
