import 'package:flutter/material.dart';

class DialogLoading extends StatelessWidget {
  final String? label;
  const DialogLoading({super.key, this.label});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      constraints: BoxConstraints(
        minWidth: 140,
        minHeight: 140,
        maxWidth: 140,
        maxHeight: 140
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16,
        children: [
          CircularProgressIndicator.adaptive(),
          label == null
              ? SizedBox()
              : Text(
                  label!,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
        ],
      ),
    );
  }
}
