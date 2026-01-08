import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Initial screen"), centerTitle: true),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          CardCustom(),
          SizedBox(height: 20),
          CardImage(
            imageUrl:
                "https://www.ifam.es/colombia/wp-content/uploads/sites/13/2015/08/imagenes-de-paisajes-hermosos-4.jpg",
            name: "Un paisaje en la llanura",
          ),
          SizedBox(height: 20),
          CardImage(
            imageUrl:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYLB6vLTrxuPHxvagZ10bjuuk7r_A47vEiFA&s",
          ),
          SizedBox(height: 20),
          CardImage(
            imageUrl:
                "https://images.pexels.com/photos/1619317/pexels-photo-1619317.jpeg?cs=srgb&dl=pexels-souvenirpixels-1619317.jpg&fm=jpg",
            name: "Durmiendo cerca al mar",
          ),
          SizedBox(height: 80),
        ],
      ),
    );
  }
}
