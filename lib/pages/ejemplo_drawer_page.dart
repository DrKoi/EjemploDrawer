import 'package:asdf1409/pages/drawer_pages/dw_page1.dart';
import 'package:asdf1409/pages/drawer_pages/dw_page2.dart';
import 'package:asdf1409/pages/drawer_pages/dw_page3.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class EjemploDrawerPage extends StatelessWidget {
  const EjemploDrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Icon(MdiIcons.abacus),
        title: Text('Drawer Ejemplo'),
      ),
      body: Center(child: Text('Contenido')),
      drawer: Drawer(
        child: ListView(children: [
          DrawerHeader(
            child: Container(
              alignment: Alignment.center,
              color: Colors.lightBlueAccent.shade100,
              child: Text('Header'),
            ),
          ),
          ListTile(
            leading: Icon(MdiIcons.cube),
            title: Text('Página 1'),
            onTap: () => navegar(context, 1),
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            leading: Icon(MdiIcons.cube),
            title: Text('Página 2'),
            onTap: () {
              navegar(context, 2);
            },
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            leading: Icon(MdiIcons.cube),
            title: Text('Página 3'),
            onTap: () => navegar(context, 3),
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            leading: Icon(MdiIcons.exitToApp),
            title: Text('Cerrar'),
            onTap: () => Navigator.pop(context),
          ),
          Divider(
            thickness: 2,
          ),
        ]),
      ),
    );
  }

  void navegar(BuildContext context, int numPagina) {
    List paginas = [DwPage1(), DwPage2(), DwPage3()];
    MaterialPageRoute route = MaterialPageRoute(
      builder: (context) => paginas[numPagina - 1],
    );
    //Navigator.pop(context);
    Navigator.push(context, route);
  }
}
