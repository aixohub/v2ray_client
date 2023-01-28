import 'package:flutter/material.dart';

import '../../model/v2ray_config.dart';

typedef ToggleTodoCallback = void Function(V2rayConfig config, bool isChecked);

class V2rayConfigList extends StatelessWidget {
  const V2rayConfigList(
      {super.key, required this.configList, required this.onTodoToggle});

  final List<V2rayConfig> configList;
  final ToggleTodoCallback onTodoToggle;

  Widget _buildItem(BuildContext context, int index) {
    final v2rayConfig = configList[index];
    return CheckboxListTile(
      value: v2rayConfig.isSelected,
      title: Text(v2rayConfig.configName),
      subtitle: Text(v2rayConfig.configDomain),
      selected: v2rayConfig.isSelected,
      selectedTileColor: Colors.grey,
      onChanged: (bool? isSelected) {
        onTodoToggle(v2rayConfig, isSelected!);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildItem,
      itemCount: configList.length,
    );
  }
}

