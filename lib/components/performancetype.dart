import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class PerformanceType extends StatefulWidget {
  const PerformanceType({super.key});

  @override
  State<PerformanceType> createState() => _PerformanceTypeState();
}

class _PerformanceTypeState extends State<PerformanceType> {
  @override
  var isPerson = false;
  var isVirtual = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.orange.shade400;
  }

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Performance Type*",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Checkbox(
                  value: isPerson,
                  checkColor: Colors.black,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  onChanged: ((value) {
                    setState(() {
                      isPerson = value!;
                    });
                  }),
                ),
                Text(
                  'In Person',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isVirtual,
                  checkColor: Colors.black,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  onChanged: ((value) {
                    setState(() {
                      isVirtual = value!;
                    });
                  }),
                ),
                Text(
                  'Virtual',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
