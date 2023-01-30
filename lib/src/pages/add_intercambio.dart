import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trailerinspector/src/widgets/widgets.dart';

import '../provider/providers.dart';
import '../views/views.dart';

class AddIntercambio extends StatelessWidget {
  const AddIntercambio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screens = [
      const DatosTab(),
      const CajaTab(),
      const FrontalDerechoTab(),
      const LateralDerechoTab(),
      const PuertasTab(),
      const LateralIzquierdoTab(),
    ];
    final addIntercambioProvider = Provider.of<AddIntercambioProvider>(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(overflow: TextOverflow.visible),
        items: [
          const BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(Icons.description_rounded),
              label: 'Datos'),
          BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Image.asset('assets/images/trailer.png',
                  color: Colors.white, height: 30),
              label: 'Caja'),
          BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Image.asset('assets/images/tire.png',
                  color: Colors.white, height: 30),
              label: 'Frontal Derecho'),
          const BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(Icons.photo),
              label: 'Lateral Derecho'),
          const BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(Icons.list),
              label: 'Puertas'),
          const BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(Icons.list),
              label: 'Lateral Izquierdo'),
        ],
        currentIndex: addIntercambioProvider.currentindex,
        onTap: (value) => addIntercambioProvider.currentindex = value,
      ),
      appBar: const CustomAppbar(title: 'Agregar Intercambio'),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        controller: addIntercambioProvider.controller,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: screens[addIntercambioProvider.currentindex],
        ),
      ),
    );
  }
}
