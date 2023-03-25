import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hidden Drawer Menu',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Hidden Drawer Menu'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<ScreenHiddenDrawer> items=[] ;

  @override
  void initState() {
    items.add(ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'first page',
          baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
          colorLineSelected: Colors.indigo, selectedStyle: const TextStyle(),
        ),
        const Text('first page'))
    );

    items.add(
        ScreenHiddenDrawer(
            ItemHiddenMenu(
          name: 'Second Page',
          baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
          colorLineSelected: Colors.orange, selectedStyle: const TextStyle(),
        ),
        const Text('Second Page')
    ));
    items.add(
        ScreenHiddenDrawer(
            ItemHiddenMenu(
              name: 'Third Page',
              baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
              colorLineSelected: Colors.orange, selectedStyle: const TextStyle(),
            ),
            const Text('Third Page')
        ));
    items.add(
        ScreenHiddenDrawer(
            ItemHiddenMenu(
              name: 'Forth Page',
              baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
              colorLineSelected: Colors.orange, selectedStyle: const TextStyle(),
            ),
            const Text('Forth Page')
        ));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.blueGrey,
      backgroundColorAppBar: Colors.indigo,
      screens: items,
         enableScaleAnimation: true,
         enableCornerAnimation: true,
      slidePercent: 50.0,
      verticalScalePercent: 90.0,
      contentCornerRadius: 40.0,
         elevationAppBar: 10.0,
         enableShadowItensMenu: true,
      isDraggable: true,
      backgroundMenu: const DecorationImage(
          image: ExactAssetImage('assets/download.jpg'),
          fit: BoxFit.cover
      ),
    );
  }
}

