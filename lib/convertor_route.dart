import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'unit.dart';

class ConvertorRoute extends StatefulWidget {
  final Color color;

  final List<Unit> units;

  const ConvertorRoute({
    @required this.color,
    @required this.units,
  })  : assert(color != null),
        assert(units != null);

  @override
  _ConvertorRouteState createState() => _ConvertorRouteState();
}

class _ConvertorRouteState extends State<ConvertorRoute> {
  @override
  Widget build(BuildContext context) {
    final unitWidgets = widget.units.map((Unit unit) {
      return Container(
        color: widget.color,
        margin: EdgeInsets.all(16.0),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              unit.name,
              style: Theme.of(context).textTheme.headline,
            ),
            Text(
              'Conversion ${unit.conversion}',
              style: Theme.of(context).textTheme.subhead,
            )
          ],
        ),
      );
    }).toList();

    return ListView(
      children: unitWidgets,
    );
  }
}
