import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trailerinspector/src/components/colors.dart';
import 'package:trailerinspector/src/global/enviroment.dart';
import 'package:trailerinspector/src/models/models.dart';

import 'package:trailerinspector/src/widgets/widgets.dart';

import '../provider/providers.dart';

class SearchOperador extends StatelessWidget {
  const SearchOperador({super.key});

  @override
  Widget build(BuildContext context) {
    final operadorProvider = Provider.of<OperadorProvider>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          operadorProvider.operador =
              Operador(nombre: '', rfc: '', linea: '', scac: '', image: '');
          operadorProvider.image = '';
          Navigator.pushNamed(context, 'addoperador');
        },
        backgroundColor: CustomColors.primary,
        child: const Icon(Icons.add),
      ),
      appBar: const CustomAppbar(title: 'Seleccione el operador'),
      body: Column(
        children: [
          const CustomTextField(),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                await operadorProvider.getOperadores();
              },
              child: ListView.builder(
                itemCount: operadorProvider.operadoressuggestions.length,
                itemBuilder: (context, index) {
                  final operador =
                      operadorProvider.operadoressuggestions[index];
                  return ListTile(
                    leading: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: operador.image.isNotEmpty
                            ? Image.network(
                                '${Enviroment.HOST_URL}/imagenes_operadores/${operador.image}',
                                fit: BoxFit.fill,
                                width: 50,
                                height: 50)
                            : Image.asset(
                                'assets/images/logo.png',
                                width: 50,
                                height: 50,
                                fit: BoxFit.fill,
                              )),
                    title: Text(operador.nombre),
                    onTap: () {
                      operadorProvider.operador = operador;
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          title: Center(
                              child: Column(
                            children: [
                              Text(operadorProvider.operador.nombre,
                                  textAlign: TextAlign.center),
                              const Divider(thickness: 1)
                            ],
                          )),
                          content: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                operador.image.isNotEmpty
                                    ? Image.network(
                                        '${Enviroment.HOST_URL}/imagenes_operadores/${operador.image}',
                                        fit: BoxFit.fill,
                                        height: 265,
                                        width: 265,
                                      )
                                    : Image.asset(
                                        'assets/images/logo.png',
                                        width: 265,
                                        height: 265,
                                        fit: BoxFit.fill,
                                      ),
                                const Divider(thickness: 1),
                                Text(
                                  'Nombre: ${operadorProvider.operador.nombre}',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Divider(thickness: 1),
                                Text('RFC: ${operadorProvider.operador.rfc}',
                                    textAlign: TextAlign.center),
                                const Divider(thickness: 1),
                                Text(
                                    'Linea: ${operadorProvider.operador.linea}',
                                    textAlign: TextAlign.center),
                                const Divider(thickness: 1),
                                Text('SCAC: ${operadorProvider.operador.scac}',
                                    textAlign: TextAlign.center),
                                const Divider(thickness: 1)
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                    style: const ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.red)),
                                    onPressed: () =>
                                        Navigator.pop(context, 'Cancel'),
                                    child: const Text('Cancelar'),
                                  ),
                                  ElevatedButton(
                                    style: const ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.blue)),
                                    onPressed: () {
                                      operadorProvider.image =
                                          operadorProvider.operador.image;
                                      Navigator.popAndPushNamed(
                                          context, 'addoperador');
                                    },
                                    child: const Text('Editar'),
                                  ),
                                  ElevatedButton(
                                    style: const ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.green)),
                                    onPressed: () => Navigator.popAndPushNamed(
                                        context, 'addintercambio'),
                                    child: const Text('Confirmar'),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final operadorProvider = Provider.of<OperadorProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
      child: SizedBox(
        height: 45,
        child: TextField(
            controller: operadorProvider.controllerOperador,
            cursorColor: Colors.grey[700],
            decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                floatingLabelStyle:
                    TextStyle(color: Colors.black.withOpacity(0.9)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(20)),
                fillColor: Colors.white,
                filled: true,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: 'Buscar operador'),
            onChanged: operadorProvider.searchOperador,
            textInputAction: TextInputAction.done),
      ),
    );
  }
}
