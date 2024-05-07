import 'package:flutter/material.dart';
import 'package:act70524/tab_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Barberia Paez 0524',
              style: TextStyle(fontSize: 16),
            ),
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(40),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Container(
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Colors.green.shade100,
                  ),
                  child: const TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Colors.transparent,
                    indicator: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black54,
                    tabs: [
                      TabItem(title: 'Maquina', count: 6),
                      TabItem(title: 'Navajas', count: 3),
                      TabItem(title: 'Capa', count: 1),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: const TabBarView(children: [
            const Center(
              child: SizedBox(
                width: 150,
                height: 240,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          "Timmer",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Image(
                                  image: NetworkImage(
                                      "https://www.odara.mx/cdn/shop/products/623787BES_72377155-53a1-427f-9b8d-b9407e9e4e22_1200x.jpg?v=1633455340")),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Center(
              child: SizedBox(
                width: 150,
                height: 240,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          "Navajas",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Image(
                                  image: NetworkImage(
                                      "https://m.media-amazon.com/images/I/61dALJM2J1L._AC_UY580_.jpg")),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Center(
              child: SizedBox(
                width: 150,
                height: 240,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          "Capa",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Image(
                                  image: NetworkImage(
                                      "https://tse4.mm.bing.net/th?q=CAPA%20BARBER%20&%20NAILS%20Calle%20Dr.%20Don%20Manuel%20S%C3%A1nchez%20Saugar,%202,%2005420%20Sotillo%20de%20la%20Adrada,%20%C3%81vila")),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}
