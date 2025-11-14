import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon( Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('Aqui pongo el titulo'),
            subtitle: Text('Eiusmod esse commodo elit aliquip cupidatat cillum est dolor. Voluptate do irure amet aute Lorem aute dolor minim nulla aute do dolore Lorem velit. Culpa ad occaecat cillum dolor reprehenderit non duis nostrud velit est reprehenderit dolore.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {}, 
                  child: Text('Cancelar'),
                  style: TextButton.styleFrom(foregroundColor: Colors.red),
                ),
                TextButton(
                  onPressed: () {}, 
                  child: Text('Ok'),
                  
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}