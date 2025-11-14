import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

  final options = const [
    'Ronaldo',
    'Messi',
    'Rafa Nadal',
    'Roger Federer',
    'LeBron James',
    'Stephen Curry',
    'Mike Tyson',
    'Muhammad Ali',
  ];
   
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final icons = {
      'Ronaldo': Icons.sports_soccer,
      'Messi': Icons.sports_soccer,
      'Rafa Nadal': Icons.sports_tennis,
      'Roger Federer': Icons.sports_tennis,
      'LeBron James': Icons.sports_basketball,
      'Stephen Curry': Icons.sports_basketball,
      'Mike Tyson': Icons.sports_mma,
      'Muhammad Ali': Icons.sports_mma,
    };

    final info = {
      'Ronaldo': 'Delantero portugués, conocido por su potencia, velocidad y remate preciso.',
      'Messi': 'Delantero argentino, famoso por su regate, visión y capacidad goleadora.',
      'Rafa Nadal': 'Tenista español, legendario en pistas de tierra batida, con gran ferocidad y resistencia.',
      'Roger Federer': 'Tenista suizo, elegante y completo, con uno de los mejores estilos técnicos de la historia.',
      'LeBron James': 'Estrella del baloncesto estadounidense, versátil, fuerte y gran pasador.',
      'Stephen Curry': 'Base tirador excepcional, revolucionó el juego con su acierto desde larga distancia.',
      'Mike Tyson': 'Boxeador estadounidense, conocido por su potencia y agresividad en el ring.',
      'Muhammad Ali': 'Leyenda del boxeo, famoso por su técnica, carisma y combatividad clásica.',
    };

    final image = {
      'Ronaldo': 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Cristiano_Ronaldo_2018.jpg/250px-Cristiano_Ronaldo_2018.jpg',
      'Messi': 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Lionel_Messi_20180626.jpg/250px-Lionel_Messi_20180626.jpg',
      'Rafa Nadal': 'https://www.rfet.es/media/image/noticias/10548_Foto.1602439624.png',
      'Roger Federer': 'https://imgresizer.eurosport.com/unsafe/1200x0/filters:format(jpeg)/origin-imgresizer.eurosport.com/2021/11/13/3253499-66587248-2560-1440.jpg',
      'LeBron James': 'https://c.files.bbci.co.uk/28C4/production/_128563401_gettyimages-1463993781.jpg',
      'Stephen Curry': 'https://e0.365dm.com/18/10/768x432/skysports-steph-curry-golden-state-warriors_4466538.jpg?20181027143715',
      'Mike Tyson': 'https://m.media-amazon.com/images/I/51LulJKkZhL._AC_UF894,1000_QL80_.jpg',
      'Muhammad Ali': 'https://elordenmundial.com/wp-content/uploads/2022/06/Muere-Muhammad-Ali-campeon-mundial-de-boxeo-y-activista-estadounidense.jpg',
    };

    return Scaffold(
      appBar: AppBar(
      title: const Text('Jugadores Famosos'),
      backgroundColor: Colors.redAccent,
      ),
      body: ListView(
      children: options.map((e) {
        return ListTile(
        leading: Icon(icons[e] ?? Icons.person),
        title: Text(e),
        trailing: const Icon(Icons.arrow_forward_ios_outlined),
        onTap: () {
          final snackBar = SnackBar(
          content: Text('Seleccionaste a $e, manten presionado para más info'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        onLongPress: () {
          showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(image[e] ?? 'https://via.placeholder.com/150'),
                Text(info[e] ?? 'Información no disponible'),
              ],
            ),
            actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cerrar'),
            ),
            ],
          ),
          );
        },
        );
      }).toList(),
      ),
    );
  }
}