import 'package:flutter/material.dart';

class BotonOpciones extends StatelessWidget {
  const BotonOpciones({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        offset: Offset(0, 70),
        icon: const Icon(
          Icons.more_vert,
          size: 32,
        ),
        itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              PopupMenuItem(
                  onTap: () {}, value: 1, child: Text('opcion número 1')),
              PopupMenuItem(
                  onTap: () {}, value: 2, child: Text('opcion número 2'))
            ]);
  }
}
