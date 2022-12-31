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
      const LlantasTab(),
      const FotosTab(),
      const AccesoriosTab()
    ];
    final addIntercambioProvider = Provider.of<AddIntercambioProvider>(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
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
              label: 'Llantas'),
          const BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(Icons.photo),
              label: 'Fotos'),
          const BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(Icons.list),
              label: 'Accesorios'),
        ],
        currentIndex: addIntercambioProvider.currentindex,
        onTap: (value) => addIntercambioProvider.currentindex = value,
      ),
      appBar: const CustomAppbar(title: 'Agregar Intercambio'),
      body: SingleChildScrollView(
        controller: addIntercambioProvider.controller,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: screens[addIntercambioProvider.currentindex],
        ),
      ),
    );
  }
}
