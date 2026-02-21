import 'package:flutter/material.dart';
import '../utils/constants.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? icon;
  final bool isOutlined;
  final Color? backgroundColor;
  final Color? textColor;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.isOutlined = false,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    final bgColor = backgroundColor ?? AppColors.primary;
    final txtColor = textColor ?? Colors.white;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(AppRadius.md),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.xl,
            vertical: AppSpacing.md,
          ),
          decoration: BoxDecoration(
            color: isOutlined ? Colors.transparent : bgColor,
            borderRadius: BorderRadius.circular(AppRadius.md),
            border: isOutlined
                ? Border.all(color: bgColor, width: 2)
                : null,
            boxShadow: isOutlined
                ? null
                : [
                    BoxShadow(
                      color: bgColor.withOpacity(0.3),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: AppTextStyles.button.copyWith(
                  color: isOutlined ? bgColor : txtColor,
                ),
              ),
              if (icon != null) ..[
                const SizedBox(width: AppSpacing.sm),
                Icon(
                  icon,
                  color: isOutlined ? bgColor : txtColor,
                  size: 20,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
