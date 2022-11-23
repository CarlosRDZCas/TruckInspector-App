import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/components.dart';
import '../provider/providers.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final intercambioProvider =
        Provider.of<IntercambioProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFFF0F0F0),
        appBar: AppBar(
          title: const Center(child: Text('Intercambios')),
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(
                      context: context, delegate: CustomSearchDelegate());
                },
                icon: const Icon(Icons.search))
          ],
          backgroundColor: CustomColors.primary,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
        ),
        drawer: const Drawer(),
        body: RefreshIndicator(
          onRefresh: () async {
            await intercambioProvider.getIntercambios();
          },
          child: ListView.builder(
            itemCount: intercambioProvider.intercambio.length,
            itemBuilder: (BuildContext context, int index) {
              return ListIntercambioCard(index: index);
            },
          ),
        ),
      ),
    );
  }
}

class ListIntercambioCard extends StatelessWidget {
  const ListIntercambioCard({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    final intercambioProvider = Provider.of<IntercambioProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.fill,
                width: 70,
                height: 120,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Folio: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                          '${intercambioProvider.intercambio[index].datos.folio}'),
                      const SizedBox(width: 8),
                      const Text(
                        'Fecha: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                          '${intercambioProvider.intercambio[index].datos.fechaintercambio.day}/${intercambioProvider.intercambio[index].datos.fechaintercambio.month}/${intercambioProvider.intercambio[index].datos.fechaintercambio.year} ${intercambioProvider.intercambio[index].datos.fechaintercambio.hour}:${intercambioProvider.intercambio[index].datos.fechaintercambio.minute}:${intercambioProvider.intercambio[index].datos.fechaintercambio.second}')
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Text(
                        'Unidad: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                          '${intercambioProvider.intercambio[index].datos.unidad}'),
                      const SizedBox(width: 8),
                      const Text(
                        'Caja: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(intercambioProvider
                          .intercambio[index].trailer.numerotrailer)
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Text(
                        'Operador: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(intercambioProvider
                          .intercambio[index].datos.operador),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Text(
                        'Cliente: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(intercambioProvider.intercambio[index].datos.cliente)
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Text(
                        'Origen: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(intercambioProvider.intercambio[index].datos.origen)
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Text(
                        'Destino: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(intercambioProvider.intercambio[index].datos.destino)
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Cajon: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                          '${intercambioProvider.intercambio[index].trailer.cajon}')
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Movimiento:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(intercambioProvider.intercambio[index].datos.movimiento),
                  Image.asset(
                    'assets/images/redarrow.png',
                    width: 50,
                    height: 70,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
