import 'package:flutter/material.dart';

class AccesoriosTab extends StatelessWidget {
  const AccesoriosTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            children: [
              CheckboxListTile(
                activeColor: Colors.green,
                value: true,
                onChanged: (value) {},
                title: const Text('Luces Traseras'),
              ),
              CheckboxListTile(
                activeColor: Colors.green,
                value: true,
                onChanged: (value) {},
                title: const Text('Luces Frente'),
              ),
              CheckboxListTile(
                activeColor: Colors.green,
                value: true,
                onChanged: (value) {},
                title: const Text('Luces Laterales'),
              ),
              CheckboxListTile(
                activeColor: Colors.green,
                value: true,
                onChanged: (value) {},
                title: const Text('Luces Reflejantes'),
              ),
              CheckboxListTile(
                activeColor: Colors.green,
                value: true,
                onChanged: (value) {},
                title: const Text('Manivela'),
              ),
              CheckboxListTile(
                activeColor: Colors.green,
                value: true,
                onChanged: (value) {},
                title: const Text('Patines'),
              ),
              CheckboxListTile(
                activeColor: Colors.green,
                value: true,
                onChanged: (value) {},
                title: const Text('Zoqueteras'),
              ),
              CheckboxListTile(
                activeColor: Colors.green,
                value: true,
                onChanged: (value) {},
                title: const Text('Estribo'),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CheckboxListTile(
                activeColor: Colors.green,
                value: true,
                onChanged: (value) {},
                title: const Text('Luces Alto'),
              ),
              CheckboxListTile(
                activeColor: Colors.green,
                value: false,
                onChanged: (value) {},
                title: const Text('Luz de placa'),
              ),
              CheckboxListTile(
                activeColor: Colors.green,
                value: true,
                onChanged: (value) {},
                title: const Text('Gomas'),
              ),
              CheckboxListTile(
                activeColor: Colors.green,
                value: true,
                onChanged: (value) {},
                title: const Text('Coples'),
              ),
              CheckboxListTile(
                activeColor: Colors.green,
                value: true,
                onChanged: (value) {},
                title: const Text('5ta Rueda'),
              ),
              CheckboxListTile(
                activeColor: Colors.green,
                value: true,
                onChanged: (value) {},
                title: const Text('Mangueras'),
              ),
              CheckboxListTile(
                activeColor: Colors.green,
                value: true,
                onChanged: (value) {},
                title: const Text('Lineas de Aire'),
              ),
            ],
          ),
        )
      ],
    );
  }
}
