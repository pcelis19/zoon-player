import 'package:flutter/material.dart';
import 'package:zn/lib.dart';

class GenericSelector<T> extends StatelessWidget {
  const GenericSelector({
    super.key,
    required this.options,
    required this.onSelection,
    required this.currentSelection,
    this.title,
    this.optionStringBuilder,
    this.isSelectedOverride,
    this.popAfterSelection = false,
  });
  static Future<void> showSelector<T>(
    BuildContext context, {
    required List<T> options,
    required void Function(T?) onSelection,
    required T currentSelection,
    String Function(T)? optionStringBuilder,
    bool Function(T, T)? isSelectedOverride,
    String? title,
  }) {
    return showModalBottomSheet(
      context: context,
      // shape: const RoundedRectangleBorder(
      //   borderRadius: BorderRadius.only(
      //     topLeft: Radius.circular(20),
      //     topRight: Radius.circular(20),
      //   ),
      // ),
      builder: (_) => GenericSelector(
        options: options,
        onSelection: onSelection,
        currentSelection: currentSelection,
        optionStringBuilder: optionStringBuilder,
        isSelectedOverride: isSelectedOverride,
        popAfterSelection: true,
      ),
    );
  }

  final List<T> options;
  final void Function(T?) onSelection;
  final T currentSelection;
  final String Function(T)? optionStringBuilder;
  final bool Function(T, T)? isSelectedOverride;
  final bool popAfterSelection;
  final String? title;
  @override
  Widget build(BuildContext context) {
    if (options.isEmpty) {
      return const Text('No Selections');
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? 'Pick one'),
      ),
      body: ListView.builder(
        itemCount: options.length,
        itemBuilder: (_, index) {
          final item = options[index];
          final isSelected = isSelectedOverride?.call(currentSelection, item) ??
              currentSelection == item;
          return TextButton(
            style: TextButton.styleFrom(
              textStyle: TextStyle(
                color: isSelected ? context.primaryColor : null,
              ),
            ),
            onPressed: () {
              onSelection.call(item);
              if (popAfterSelection) {
                context.navigator.pop();
              }
            },
            child: Text(optionStringBuilder?.call(item) ?? item.toString()),
          );
        },
      ),
    );
  }
}
