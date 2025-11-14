import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Widget'),
      ),
      body: Center(
         child: ListView(
          padding: EdgeInsets.symmetric( horizontal: 20, vertical: 10),
          children: [
            CustomCardTipo1(),
            SizedBox( height: 10 ), 
            CustomCardTipo2(title: 'Call of Duty Black Ops II', imageUrl: 'https://upload.wikimedia.org/wikipedia/en/thumb/0/05/Call_of_Duty_Black_Ops_II_box_artwork.png/250px-Call_of_Duty_Black_Ops_II_box_artwork.png'),
            SizedBox( height: 10 ), 
            CustomCardTipo2(title: 'Grand Theft Auto V', imageUrl: 'https://imagenes.hobbyconsolas.com/files/image_640_360/uploads/imagenes/2023/04/25/690d30fadb73f.png',),
            SizedBox( height: 10 ), 
            CustomCardTipo2(imageUrl: 'https://cladera.org/foda/images/subcat-1872.jpg',),
            SizedBox( height: 10 ), 
            CustomCardTipo2(title: 'Resident Evil VII Biohazard', imageUrl: 'https://cdn.dlcompare.com/game_tetiere/upload/gameimage/file/20182.jpeg.webp',),
            SizedBox( height: 10 ), 
          ],
         )
      ),
    );
  }
}