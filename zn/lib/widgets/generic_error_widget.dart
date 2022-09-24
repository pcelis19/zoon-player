import 'package:flutter/material.dart';
import 'package:zn/lib.dart';

class GenericErrorWidget extends StatelessWidget {
  const GenericErrorWidget(
    this.failure, {
    super.key,
    this.errorTitle,
    this.errorText,
    this.canPop = false,
    this.onAcknowledge,
  });
  final Failure failure;
  final String? errorTitle;
  final String? errorText;
  final bool canPop;
  final void Function()? onAcknowledge;

  static Future<void> showModal(
    BuildContext context,
    Failure failure, {
    String? errorTitle,
    String? errorText,
    void Function()? onAcknowledge,
  }) {
    return showDialog(
      context: context,
      builder: (_) => GenericErrorWidget(
        failure,
        canPop: true,
        errorText: errorText,
        errorTitle: errorTitle,
        onAcknowledge: onAcknowledge,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(errorTitle ?? failure.uiTitleError ?? 'Error Alert'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(errorText ?? failure.uiMessageError),
          TextButton.icon(
            onPressed: () {
              onAcknowledge?.call();
              if (canPop) {
                context.navigator.pop();
              }
            },
            icon: const Icon(Icons.check),
            label: const Text('ok'),
          )
        ],
      ),
    );
  }
}
