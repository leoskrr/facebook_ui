import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/config/palette.dart';
import 'package:flutter_facebook_responsive_ui/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          title: Text(
            'facebook',
            style: TextStyle(
                color: Palette.facebookBlue,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2),
          ),
          centerTitle: false,
          floating: true,
          //ACTIONS -> adiciona os ícones a direita  do titulo
          actions: [
            CircleButton(
                icon: Icons.search,
                iconSize: 30.0,
                onPressed: () => print("Search")),
            CircleButton(
                icon: MdiIcons.facebookMessenger,
                iconSize: 30.0,
                onPressed: () => print("Messenger")),
          ],
        )
      ],
    ));
  }
}
