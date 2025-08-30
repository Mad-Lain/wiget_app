import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Elevation 0'},
  {'elevation': 1.0, 'label': 'Elevation 1'},
  {'elevation': 2.0, 'label': 'Elevation 2'},
  {'elevation': 3.0, 'label': 'Elevation 3'},
  {'elevation': 4.0, 'label': 'Elevation 4'},
  {'elevation': 5.0, 'label': 'Elevation 5'},
];

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cards Screen')),
      body: _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(4, 10, 4, 10),
        child: Column(
          children: [
            ...cards.map(
              (card) => _CardType1(
                label: card['label'],
                elevation: card['elevation'],
              ),
            ),

            ...cards.map(
              (card) => _CardType2(
                label: card['label'],
                elevation: card['elevation'],
              ),
            ),

            ...cards.map(
              (card) => _CardType3(
                label: card['label'],
                elevation: card['elevation'],
              ),
            ),

            ...cards.map(
              (card) => _CardType4(
                label: card['label'],
                elevation: card['elevation'],
              ),
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType1({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.accessible_outlined),
            ),
          ),
          Align(alignment: Alignment.bottomLeft, child: Text(label)),
        ],
      ),
    );
  }
}

class _CardType2 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType2({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: colors.outline),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.accessible_outlined),
              ),
            ),
            Align(alignment: Alignment.bottomLeft, child: Text(label)),
          ],
        ),
      ),
    );
  }
}

class _CardType3 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType3({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      color: colors.surfaceContainerHighest,
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.accessible_outlined),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - Filled'),
            ),
          ],
        ),
      ),
    );
  }
}

class _CardType4 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType4({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.accessible_outlined),
            ),
          ),
          Align(alignment: Alignment.bottomLeft, child: Text(label)),
        ],
      ),
    );
  }
}
