import 'package:flutter/material.dart';
import 'package:with_retro_firebase/core/components/autosizetext/text.dart';
import 'package:with_retro_firebase/core/extension/context_extension.dart';

class SettingsCard extends StatelessWidget {
  final String? text;
  final Widget? icon;
  final Widget? rightWidget;
  final Widget? leftWidget;
  final VoidCallback onPress;
  final Color? backgroundColor;
  const SettingsCard(
      {Key? key,
      this.text,
      this.icon,
      this.rightWidget,
      this.leftWidget,
      required this.onPress,
      this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () => onPress(),
      child: Padding(
        padding: context.paddingLowVertical,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(3.0),
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: backgroundColor ?? theme.colorScheme.primary,
                  ),
                  child: leftWidget ?? icon ?? const Icon(Icons.person),
                ),
                const SizedBox(
                  width: 10,
                ),
                DefaultText(data: text ?? "")
              ],
            ),
            rightWidget ??
                Icon(Icons.arrow_forward_ios,
                    size: 10, color: theme.colorScheme.primaryVariant)
          ],
        ),
      ),
    );
  }
}
