import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zn/lib.dart';

class SettingsScreen extends StatelessWidget {
  static const title = 'settings';

  static const settingWidget = Hero(tag: title, child: Text(title));
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: settingWidget,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        children: [
          BlocBuilder<ThemeCubit, ThemeMode>(
            builder: (context, state) {
              return _SettingsOption(
                label: 'Theme',
                currentValue: state.name.capitalize(),
                onPress: () {
                  GenericSelector.showSelector<ThemeMode>(
                    context,
                    options: ThemeMode.values,
                    onSelection: context.read<ThemeCubit>().updateThemeMode,
                    currentSelection: state,
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }
}

class _SettingsOption extends StatelessWidget {
  const _SettingsOption({
    super.key,
    required this.label,
    required this.currentValue,
    required this.onPress,
  });
  final String label;
  final String currentValue;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(label),
      subtitle: Text(currentValue),
      onTap: onPress,
    );
  }
}
