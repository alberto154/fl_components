import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {

  final String imageUrl;
  final String? title;

  const CustomCardTipo2({super.key, required this.imageUrl, this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),

      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: AssetImage('assets/giphy.gif'),
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 200),
          ),

          if (title != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
              child: Text(title ?? 'Desconocido'),
            )],
            
      ),
    );
  }
}
