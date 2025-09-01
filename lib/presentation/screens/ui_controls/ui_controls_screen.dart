import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UI-Controls screen')),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation {car, plane,boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),

        RadioGroup(
          onChanged: (value) => setState(() {
          selectedTransportation = Transportation.car;
        }), child: Column(children: [
          Radio(value: Transportation.car),
        ],)),

        RadioGroup(onChanged: (value) => setState(() {
          selectedTransportation = Transportation.plane;
        }), child: Column(children: [
          Radio(value: Transportation.plane)
        ],)),

        RadioGroup(onChanged: (value) => setState(() {
          selectedTransportation = Transportation.boat;
        }), child: Column(children: [
          Radio(value: Transportation.boat)
        ],)),

        RadioGroup(onChanged: (value) => setState(() {
          selectedTransportation = Transportation.submarine;
        }), child: Column(children: [
          Radio(value: Transportation.submarine)
        ],)),

        

        

        
      ],
    );
  }
}
