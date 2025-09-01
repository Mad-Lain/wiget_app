import 'package:flutter/material.dart';

class MenuItems {
  final String tittle;
  final String subTittle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.tittle,
    required this.subTittle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    icon: Icons.smart_button_outlined,
    link: '/buttons',
    subTittle: 'Varios botones en Flutter',
    tittle: 'Botones',
  ),

  MenuItems(
    icon: Icons.credit_card,
    link: '/cards',
    subTittle: 'Un contendor estilizado de flutter',
    tittle: 'Tarjetas',
  ),

  MenuItems(
    icon: Icons.refresh_rounded,
    link: '/progress',
    subTittle: 'generales y controlados',
    tittle: 'ProgressIndicators',
  ),

  MenuItems(
    icon: Icons.cookie,
    link: '/snackbar',
    subTittle: 'Indicadores en pantalla',
    tittle: 'Snackbar y dialogos',
  ),

  MenuItems(
    icon: Icons.animation,
    link: '/animated',
    subTittle: 'Stateful widget animado',
    tittle: 'Animated container',
  ),

  MenuItems(
    icon: Icons.gamepad,
    link: '/ui-controls',
    subTittle: 'Serie de controles en flutter',
    tittle: 'UI-controls + Tittles',
  ),
];
