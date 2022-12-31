import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

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
