import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../provider/providers.dart';
import '../widgets/widgets.dart';

class CajaTab extends StatelessWidget {
  const CajaTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cajaProvider = Provider.of<CajaProvider>(context);
    return Column(
      children: [
        CustomDropDownButton(
          hint: 'Tipo',
          value: cajaProvider.tipocaja,
          radius: 18,
          items: const [
            DropdownMenuItem(value: 'Caja', child: Text('Caja')),
            DropdownMenuItem(value: 'Contenedor', child: Text('Contenedor')),
            DropdownMenuItem(value: 'Plataforma', child: Text('Plataforma')),
          ],
          onChanged: (value) {
            cajaProvider.tipocaja = value;
          },
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                initialValue: cajaProvider.caja,
                height: 45,
                labelText: 'Caja',
                obscuretext: false,
                onChanged: (value) {
                  cajaProvider.caja = value;
                },
                validator: (value) {},
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: CustomTextFormField(
                initialValue: cajaProvider.placas,
                height: 45,
                labelText: 'Placas',
                obscuretext: false,
                onChanged: (value) {
                  cajaProvider.placas=value;
                },
                validator: (value) {},
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        CustomTextFormField(
          initialValue: cajaProvider.estadoprocedencia,
          height: 45,
          labelText: 'Estado Procedencia',
          obscuretext: false,
          onChanged: (value) {
            cajaProvider.estadoprocedencia=value;
          },
          validator: (value) {},
        ),
        const SizedBox(height: 15),
        CustomDropDownButton(
          value: cajaProvider.propietario,
          radius: 18,
          hint: 'Propietario',
          onChanged: (value) {
            cajaProvider.propietario = value;
          },
          items: const [
            DropdownMenuItem(value: 'PAMT', child: Text('PAMT')),
            DropdownMenuItem(value: 'XTWT', child: Text('XTWT')),
            DropdownMenuItem(value: 'HLGI', child: Text('HLGI')),
            DropdownMenuItem(value: 'TIP', child: Text('TIP')),
          ],
        ),
        const SizedBox(height: 15),
        CustomTextFormField(
          initialValue: cajaProvider.chasis,
          height: 45,
          labelText: 'Chasis',
          obscuretext: false,
          onChanged: (value) {
            cajaProvider.chasis = value;
          },
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
                    value: cajaProvider.bloqueado,
                    valueFontSize: 14.0,
                    inactiveIcon: const Icon(Icons.lock_rounded),
                    activeIcon: const Icon(Icons.lock_open_rounded),
                    width: 130,
                    borderRadius: 30.0,
                    onToggle: (value) {
                      cajaProvider.bloqueado = value;
                    },
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
                    value: cajaProvider.apto,
                    valueFontSize: 14.0,
                    activeIcon: const FaIcon(FontAwesomeIcons.check),
                    inactiveIcon: const Icon(Icons.close),
                    width: 100,
                    borderRadius: 30.0,
                    onToggle: (value) {
                      cajaProvider.apto = value;
                    },
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
                    value: cajaProvider.cargado,
                    valueFontSize: 14.0,
                    activeIcon: const FaIcon(FontAwesomeIcons.truck),
                    inactiveIcon: const FaIcon(FontAwesomeIcons.truckRampBox),
                    width: 100,
                    borderRadius: 30.0,
                    onToggle: (value) {
                      cajaProvider.cargado = value;
                    },
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
