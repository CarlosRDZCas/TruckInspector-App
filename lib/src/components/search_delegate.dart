import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trailerinspector/src/models/intercambio.dart';

import '../provider/providers.dart';

class CustomSearchDelegate extends SearchDelegate {
  @override
  String get searchFieldLabel => 'Buscar ';

  @override
  List<Widget>? buildActions(BuildContext context) {
    final searchProvider = Provider.of<SearchProvider>(context);
    return [
      DropdownButton(
          icon: const Icon(Icons.filter_alt),
          alignment: Alignment.center,
          borderRadius: BorderRadius.circular(10),
          value: searchProvider.opcion,
          items: const [
            DropdownMenuItem(
              value: 'Folio',
              child: Text('Folio'),
            ),
            DropdownMenuItem(
              value: 'Caja',
              child: Text('Caja'),
            ),
            DropdownMenuItem(
              value: 'Unidad',
              child: Text('Unidad'),
            ),
            DropdownMenuItem(
              value: 'Fecha',
              child: Text('Fecha'),
            ),
          ],
          onChanged: (val) {
            searchProvider.opcion = val;
          }),
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final searchProvider = Provider.of<SearchProvider>(context);
    final intercambiosProvider =
        Provider.of<IntercambioProvider>(context, listen: false);
    if (query.isEmpty) {
      return const _EmptyResponse();
    } else {
      return FutureBuilder(
        future: intercambiosProvider.getIntercambioBy(
            searchProvider.opcion!, query),
        builder:
            (BuildContext context, AsyncSnapshot<List<Intercambio>> snapshot) {
          final inter = intercambiosProvider.intercambioquery;
          return ListView.builder(
            itemCount: inter.length,
            itemBuilder: (BuildContext context, int index) {
              if (inter.isEmpty) {
                return const _EmptyResponse();
              }
              return ListIntercambioCard(index: index);
            },
          );
        },
      );
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final searchProvider = Provider.of<SearchProvider>(context);
    final intercambiosProvider =
        Provider.of<IntercambioProvider>(context, listen: false);
    if (query.isEmpty) {
      return const _EmptyResponse();
    } else {
      return FutureBuilder(
        future: intercambiosProvider.getIntercambioBy(
            searchProvider.opcion!, query),
        builder:
            (BuildContext context, AsyncSnapshot<List<Intercambio>> snapshot) {
          final inter = intercambiosProvider.intercambioquery;
          return ListView.builder(
            itemCount: inter.length,
            itemBuilder: (BuildContext context, int index) {
              if (inter.isEmpty) {
                return const _EmptyResponse();
              }
              return ListIntercambioCard(index: index);
            },
          );
        },
      );
    }
  }
}

class _EmptyResponse extends StatelessWidget {
  const _EmptyResponse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('No hay resultados'),
    );
  }
}

class ListIntercambioCard extends StatelessWidget {
  const ListIntercambioCard({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    final intercambioProvider =
        Provider.of<IntercambioProvider>(context, listen: false);
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
                          '${intercambioProvider.intercambioquery[index].datos.folio}'),
                      const SizedBox(width: 8),
                      const Text(
                        'Fecha: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                          '${intercambioProvider.intercambioquery[index].datos.fechaintercambio.day}/${intercambioProvider.intercambioquery[index].datos.fechaintercambio.month}/${intercambioProvider.intercambioquery[index].datos.fechaintercambio.year} ${intercambioProvider.intercambioquery[index].datos.fechaintercambio.hour}:${intercambioProvider.intercambioquery[index].datos.fechaintercambio.minute}:${intercambioProvider.intercambioquery[index].datos.fechaintercambio.second}')
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
                          '${intercambioProvider.intercambioquery[index].datos.unidad}'),
                      const SizedBox(width: 8),
                      const Text(
                        'Caja: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(intercambioProvider
                          .intercambioquery[index].trailer.numerotrailer)
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
                          .intercambioquery[index].datos.operador),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Text(
                        'Cliente: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(intercambioProvider
                          .intercambioquery[index].datos.cliente)
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Text(
                        'Origen: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(intercambioProvider
                          .intercambioquery[index].datos.origen)
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Text(
                        'Destino: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(intercambioProvider
                          .intercambioquery[index].datos.destino)
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
                          '${intercambioProvider.intercambioquery[index].trailer.cajon}')
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Movimiento:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(intercambioProvider
                      .intercambioquery[index].datos.movimiento),
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
