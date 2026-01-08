import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CardImage extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const CardImage({super.key, required this.imageUrl, this.name});

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
            image: NetworkImage(imageUrl),
            placeholder: AssetImage("assets/jar-loading.gif"),
            fit: .cover,
            width: .infinity,
            fadeInDuration: Duration(milliseconds: 300),
            height: 250,
          ),
          if (name != null)
            Container(
              alignment: .centerRight,
              padding: .all(20),
              child: Text(
                name!,
                style: TextStyle(fontSize: 20, fontWeight: .bold),
              ),
            ),
        ],
      ),
    );
  }
}
