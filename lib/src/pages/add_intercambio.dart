import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'package:trailerinspector/src/widgets/widgets.dart';

import '../provider/providers.dart';

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
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(Icons.description_rounded),
              label: 'Datos'),
          BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(Icons.add_road_rounded),
              label: 'Caja'),
          BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(Icons.circle_outlined),
              label: 'Llantas'),
          BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(Icons.photo),
              label: 'Fotos'),
          BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(Icons.list),
              label: 'Accesorios'),
        ],
        currentIndex: addIntercambioProvider.currentindex,
        onTap: (value) => addIntercambioProvider.currentindex = value,
      ),
      appBar: const CustomAppbar(title: 'Agregar Intercambio'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: screens[addIntercambioProvider.currentindex],
        ),
      ),
    );
  }
}

class CajaTab extends StatelessWidget {
  const CajaTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDropDownButton(
          hint: 'Tipo',
          radius: 18,
          items: const [
            DropdownMenuItem(value: 'Caja', child: Text('Caja')),
            DropdownMenuItem(value: 'Contenedor', child: Text('Contenedor')),
            DropdownMenuItem(value: 'Plataforma', child: Text('Plataforma')),
          ],
          onChanged: (value) {},
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                height: 45,
                labelText: 'Caja',
                obscuretext: false,
                onChanged: (value) {},
                validator: (value) {},
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomTextFormField(
                height: 45,
                labelText: 'Placas',
                obscuretext: false,
                onChanged: (value) {},
                validator: (value) {},
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        CustomTextFormField(
          height: 45,
          labelText: 'Estado Procedencia',
          obscuretext: false,
          onChanged: (value) {},
          validator: (value) {},
        ),
        const SizedBox(height: 15),
        CustomDropDownButton(
          radius: 18,
          hint: 'Propietario',
          onChanged: (value) {},
          items: const [
            DropdownMenuItem(value: 'PAMT', child: Text('PAMT')),
            DropdownMenuItem(value: 'XTWT', child: Text('XTWT')),
            DropdownMenuItem(value: 'HLGI', child: Text('HLGI')),
            DropdownMenuItem(value: 'TIP', child: Text('TIP')),
          ],
        ),
        const SizedBox(height: 15),
        CustomTextFormField(
          height: 45,
          labelText: 'Chasis',
          obscuretext: false,
          onChanged: (value) {},
          validator: (value) {},
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Text('Bloqueado'),
                  const SizedBox(height: 10),
                  FlutterSwitch(
                    value: true,
                    valueFontSize: 14.0,
                    inactiveIcon: const Icon(Icons.lock_rounded),
                    activeIcon: const Icon(Icons.lock_open_rounded),
                    width: 130,
                    borderRadius: 30.0,
                    onToggle: (value) {},
                    activeText: 'Desbloqueado',
                    inactiveText: 'Bloqueado',
                    activeColor: Colors.green,
                    inactiveColor: Colors.red,
                    showOnOff: true,
                  ),
                ],
              ),
              Column(
                children: [
                  const Text('Apto'),
                  const SizedBox(height: 10),
                  FlutterSwitch(
                    value: false,
                    valueFontSize: 14.0,
                    activeIcon: const FaIcon(FontAwesomeIcons.check),
                    inactiveIcon: const Icon(Icons.close),
                    width: 100,
                    borderRadius: 30.0,
                    onToggle: (value) {},
                    activeText: 'Apto',
                    inactiveText: 'No apto',
                    activeColor: Colors.green,
                    inactiveColor: Colors.red,
                    showOnOff: true,
                  ),
                ],
              ),
              Column(
                children: [
                  const Text('Cargado'),
                  const SizedBox(height: 10),
                  FlutterSwitch(
                    value: true,
                    valueFontSize: 14.0,
                    activeIcon: const FaIcon(FontAwesomeIcons.truck),
                    inactiveIcon: const FaIcon(FontAwesomeIcons.truckRampBox),
                    width: 100,
                    borderRadius: 30.0,
                    onToggle: (value) {},
                    activeText: 'Cargado',
                    inactiveText: 'Vacio',
                    activeColor: Colors.green,
                    inactiveColor: Colors.red,
                    showOnOff: true,
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class LlantasTab extends StatelessWidget {
  const LlantasTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(
            child: Text('Posicion 1',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
        const SizedBox(height: 10),
        CustomDropDownButton(
            radius: 18,
            hint: 'Marca de la llanta',
            items: const [
              DropdownMenuItem(
                  value: 'Bridgestone', child: Text('Bridgestone')),
              DropdownMenuItem(value: 'Pirelli', child: Text('Pirelli')),
              DropdownMenuItem(value: 'Michelline', child: Text('Michelline')),
              DropdownMenuItem(value: 'Cooper', child: Text('Cooper')),
            ],
            onChanged: (value) {}),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Estado de la llanta',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Profundidad',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
          ],
        ),
        const SizedBox(height: 15),
        const Center(
            child: Text('Posicion 2',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
        const SizedBox(height: 10),
        CustomDropDownButton(
            radius: 18,
            hint: 'Marca de la llanta',
            items: const [
              DropdownMenuItem(
                  value: 'Bridgestone', child: Text('Bridgestone')),
              DropdownMenuItem(value: 'Pirelli', child: Text('Pirelli')),
              DropdownMenuItem(value: 'Michelline', child: Text('Michelline')),
              DropdownMenuItem(value: 'Cooper', child: Text('Cooper')),
            ],
            onChanged: (value) {}),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Estado de la llanta',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Profundidad',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
          ],
        ),
        const SizedBox(height: 15),
        const Center(
            child: Text('Posicion 3',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
        const SizedBox(height: 10),
        CustomDropDownButton(
            radius: 18,
            hint: 'Marca de la llanta',
            items: const [
              DropdownMenuItem(
                  value: 'Bridgestone', child: Text('Bridgestone')),
              DropdownMenuItem(value: 'Pirelli', child: Text('Pirelli')),
              DropdownMenuItem(value: 'Michelline', child: Text('Michelline')),
              DropdownMenuItem(value: 'Cooper', child: Text('Cooper')),
            ],
            onChanged: (value) {}),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Estado de la llanta',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Profundidad',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
          ],
        ),
        const SizedBox(height: 15),
        const Center(
            child: Text('Posicion 4',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
        const SizedBox(height: 10),
        CustomDropDownButton(
            radius: 18,
            hint: 'Marca de la llanta',
            items: const [
              DropdownMenuItem(
                  value: 'Bridgestone', child: Text('Bridgestone')),
              DropdownMenuItem(value: 'Pirelli', child: Text('Pirelli')),
              DropdownMenuItem(value: 'Michelline', child: Text('Michelline')),
              DropdownMenuItem(value: 'Cooper', child: Text('Cooper')),
            ],
            onChanged: (value) {}),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Estado de la llanta',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Profundidad',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
          ],
        ),
        const SizedBox(height: 15),
        const Center(
            child: Text('Posicion 5',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
        const SizedBox(height: 10),
        CustomDropDownButton(
            radius: 18,
            hint: 'Marca de la llanta',
            items: const [
              DropdownMenuItem(
                  value: 'Bridgestone', child: Text('Bridgestone')),
              DropdownMenuItem(value: 'Pirelli', child: Text('Pirelli')),
              DropdownMenuItem(value: 'Michelline', child: Text('Michelline')),
              DropdownMenuItem(value: 'Cooper', child: Text('Cooper')),
            ],
            onChanged: (value) {}),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Estado de la llanta',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Profundidad',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
          ],
        ),
        const SizedBox(height: 15),
        const Center(
            child: Text('Posicion 6',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
        const SizedBox(height: 10),
        CustomDropDownButton(
            radius: 18,
            hint: 'Marca de la llanta',
            items: const [
              DropdownMenuItem(
                  value: 'Bridgestone', child: Text('Bridgestone')),
              DropdownMenuItem(value: 'Pirelli', child: Text('Pirelli')),
              DropdownMenuItem(value: 'Michelline', child: Text('Michelline')),
              DropdownMenuItem(value: 'Cooper', child: Text('Cooper')),
            ],
            onChanged: (value) {}),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Estado de la llanta',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Profundidad',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
          ],
        ),
        const SizedBox(height: 15),
        const Center(
            child: Text('Posicion 7',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
        const SizedBox(height: 10),
        CustomDropDownButton(
            radius: 18,
            hint: 'Marca de la llanta',
            items: const [
              DropdownMenuItem(
                  value: 'Bridgestone', child: Text('Bridgestone')),
              DropdownMenuItem(value: 'Pirelli', child: Text('Pirelli')),
              DropdownMenuItem(value: 'Michelline', child: Text('Michelline')),
              DropdownMenuItem(value: 'Cooper', child: Text('Cooper')),
            ],
            onChanged: (value) {}),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Estado de la llanta',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Profundidad',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
          ],
        ),
        const SizedBox(height: 15),
        const Center(
            child: Text('Posicion 8',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
        const SizedBox(height: 10),
        CustomDropDownButton(
            radius: 18,
            hint: 'Marca de la llanta',
            items: const [
              DropdownMenuItem(
                  value: 'Bridgestone', child: Text('Bridgestone')),
              DropdownMenuItem(value: 'Pirelli', child: Text('Pirelli')),
              DropdownMenuItem(value: 'Michelline', child: Text('Michelline')),
              DropdownMenuItem(value: 'Cooper', child: Text('Cooper')),
            ],
            onChanged: (value) {}),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Estado de la llanta',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomTextFormField(
                  height: 45,
                  labelText: 'Profundidad',
                  obscuretext: false,
                  onChanged: (value) {},
                  validator: (value) {}),
            ),
          ],
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}

class FotosTab extends StatelessWidget {
  const FotosTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class AccesoriosTab extends StatelessWidget {
  const AccesoriosTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class DatosTab extends StatelessWidget {
  const DatosTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                const Text('Entrada'),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(18.0)),
                      elevation: MaterialStateProperty.all(5),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(const CircleBorder())),
                  child: Image.asset(
                    'assets/images/greenarrow.png',
                    width: 35,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomTextFormField(
                height: 45,
                labelText: 'Fecha',
                obscuretext: false,
                onChanged: (value) {},
                validator: (value) {},
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        CustomDropDownButton(
          radius: 18,
          hint: 'Tipo de Viaje',
          items: const [
            DropdownMenuItem(value: 'Importacion', child: Text('Importacion')),
            DropdownMenuItem(value: 'Exportacion', child: Text('Exportacion')),
            DropdownMenuItem(value: 'Vacio', child: Text('Vacio'))
          ],
          onChanged: (value) {},
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                height: 45,
                labelText: 'Unidad',
                obscuretext: false,
                onChanged: (value) {},
                validator: (value) {},
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomTextFormField(
                height: 45,
                labelText: 'Placas',
                obscuretext: false,
                onChanged: (value) {},
                validator: (value) {},
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        CustomDropDownButton(
            radius: 18,
            hint: 'Tipo de Placa',
            items: const [
              DropdownMenuItem(value: 'SCT', child: Text('SCT')),
              DropdownMenuItem(value: 'Frontera', child: Text('Frontera')),
              DropdownMenuItem(value: 'Vacio', child: Text('Vacio'))
            ],
            onChanged: (value) {}),
        const SizedBox(height: 15),
        CustomTextFormField(
          height: 45,
          labelText: 'Operador',
          obscuretext: false,
          onChanged: (value) {},
          validator: (value) {},
        ),
        const SizedBox(height: 15),
        CustomTextFormField(
          height: 45,
          labelText: 'Linea Transportista',
          obscuretext: false,
          onChanged: (value) {},
          validator: (value) {},
        ),
        const SizedBox(height: 15),
        CustomTextFormField(
          height: 45,
          labelText: 'Cliente',
          obscuretext: false,
          onChanged: (value) {},
          validator: (value) {},
        ),
        const SizedBox(height: 15),
        CustomTextFormField(
          height: 45,
          labelText: 'Origen',
          obscuretext: false,
          onChanged: (value) {},
          validator: (value) {},
        ),
        const SizedBox(height: 15),
        CustomTextFormField(
          height: 45,
          labelText: 'Destino',
          obscuretext: false,
          onChanged: (value) {},
          validator: (value) {},
        ),
      ],
    );
  }
}
