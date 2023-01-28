import 'package:flutter/material.dart';
import 'package:v2ray_client/model/v2ray_config.dart';

class ConfigAdd extends StatelessWidget {
  final controller = TextEditingController();

  ConfigAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('New todo'),
      content: TextField(
        controller: controller,
        autofocus: true,
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: const Text('Add'),
          onPressed: () {
            final todo = V2rayConfig(
                configName: controller.value.text,
                configCode: controller.value.text,
                configDomain: controller.value.text);
            controller.clear();

            Navigator.of(context).pop(todo);
          },
        ),
      ],
    );
  }
}
