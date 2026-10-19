import 'package:flutter/material.dart';
import 'package:sv9_loading/src/dialog_loading.dart';

class PopupLoading {
  static Future<void> show(BuildContext context, {String? label}) async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => DialogLoading(label: label),
    );
  }

  static Future<void> hide(BuildContext context) async {
    Navigator.pop(context);
  }
}
