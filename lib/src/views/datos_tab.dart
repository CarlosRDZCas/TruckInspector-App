import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../provider/providers.dart';
import '../widgets/widgets.dart';

class DatosTab extends StatelessWidget {
  const DatosTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final datosProvider = Provider.of<DatosProvider>(context);
    return Column(
      children: [
        Row(
          children: [
            FlutterSwitch(
              value: datosProvider.eos,
              valueFontSize: 14.0,
              activeIcon: const FaIcon(
                FontAwesomeIcons.arrowLeft,
                color: Colors.green,
              ),
              inactiveIcon: const FaIcon(
                FontAwesomeIcons.arrowRight,
                color: Colors.red,
              ),
              width: 100,
              borderRadius: 30.0,
              onToggle: (value) {
                datosProvider.eos = value;
              },
              activeText: 'Entrada',
              inactiveText: 'Salida',
              activeColor: Colors.green,
              inactiveColor: Colors.red,
              showOnOff: true,
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomTextFormField(
                height: 45,
                readOnly: true,
                labelText: 'Fecha',
                obscuretext: false,
                initialValue:
                    '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year} ${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second < 10 ? '0${DateTime.now().second}' : DateTime.now().second}',
                validator: (value) {},
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        CustomDropDownButton(
          radius: 18,
          hint: 'Tipo de Viaje',
          value: datosProvider.tipoviaje,
          items: const [
            DropdownMenuItem(value: 'Importacion', child: Text('Importacion')),
            DropdownMenuItem(value: 'Exportacion', child: Text('Exportacion')),
            DropdownMenuItem(value: 'Vacio', child: Text('Vacio'))
          ],
          onChanged: (value) {
            datosProvider.tipoviaje = value!;
          },
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                initialValue: datosProvider.unidad,
                height: 45,
                labelText: 'Unidad',
                obscuretext: false,
                onChanged: (value) {
                  datosProvider.unidad = value;
                },
                validator: (value) {},
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomTextFormField(
                initialValue: datosProvider.placas,
                height: 45,
                labelText: 'Placas',
                obscuretext: false,
                onChanged: (value) {
                  datosProvider.placas = value;
                },
                validator: (value) {},
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        CustomDropDownButton(
            radius: 18,
            hint: 'Tipo de Placa',
            value: datosProvider.tipoplaca,
            items: const [
              DropdownMenuItem(value: 'SCT', child: Text('SCT')),
              DropdownMenuItem(value: 'Frontera', child: Text('Frontera')),
              DropdownMenuItem(value: 'Vacio', child: Text('Vacio'))
            ],
            onChanged: (value) {
              datosProvider.tipoplaca = value;
            }),
        const SizedBox(height: 15),
        CustomTextFormField(
          initialValue: datosProvider.operador,
          height: 45,
          labelText: 'Operador',
          obscuretext: false,
          onChanged: (value) {
            datosProvider.operador = value;
          },
          validator: (value) {},
        ),
        const SizedBox(height: 15),
        CustomTextFormField(
          initialValue: datosProvider.lineatransportista,
          height: 45,
          labelText: 'Linea Transportista',
          obscuretext: false,
          onChanged: (value) {
            datosProvider.lineatransportista = value;
          },
          validator: (value) {},
        ),
        const SizedBox(height: 15),
        CustomTextFormField(
          initialValue: datosProvider.cliente,
          height: 45,
          labelText: 'Cliente',
          obscuretext: false,
          onChanged: (value) {
            datosProvider.cliente = value;
          },
          validator: (value) {},
        ),
        const SizedBox(height: 15),
        CustomTextFormField(
          initialValue: datosProvider.origen,
          height: 45,
          labelText: 'Origen',
          obscuretext: false,
          onChanged: (value) {
            datosProvider.origen = value;
          },
          validator: (value) {},
        ),
        const SizedBox(height: 15),
        CustomTextFormField(
          initialValue: datosProvider.destino,
          height: 45,
          labelText: 'Destino',
          obscuretext: false,
          onChanged: (value) {
            datosProvider.destino = value;
          },
          validator: (value) {},
        ),
      ],
    );
  }
}
