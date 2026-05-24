import 'package:flutter/material.dart';
import 'package:hasnetix/src/common/index.dart' show AppColors, AppTextStyles;

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.backgroundColor = AppColors.primary,
    this.foregroundColor = AppColors.text,
    this.textColor = AppColors.text,
    this.borderRadius = 12,
    this.padding = const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
    this.isLoading = false,
    this.enabled = true,
    this.textStyle,
  }) : _isOutlined = false;

  const AppButton.outlined({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.backgroundColor = AppColors.primary,
    this.foregroundColor = AppColors.text,
    this.textColor = AppColors.text,
    this.borderRadius = 16,
    this.padding = const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
    this.isLoading = false,
    this.enabled = true,
    this.textStyle,
  }) : _isOutlined = true;

  final String label;
  final VoidCallback? onPressed;
  final Widget? icon;
  final Color foregroundColor;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;
  final EdgeInsets padding;
  final bool isLoading;
  final bool enabled;
  final TextStyle? textStyle;

  final bool _isOutlined;

  bool get _isDisabled => !enabled || onPressed == null || isLoading;

  @override
  Widget build(BuildContext context) {
    final effectiveOnPressed = _isDisabled ? null : onPressed;

    return Opacity(
      opacity: _isDisabled ? 0.4 : 1,
      child: ElevatedButton(
        onPressed: effectiveOnPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: _isOutlined ? Colors.transparent : backgroundColor,
          foregroundColor: textColor,
          disabledBackgroundColor: backgroundColor,
          disabledForegroundColor: textColor,
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: _isOutlined
                ? BorderSide(color: foregroundColor, width: 1)
                : BorderSide.none,
          ),
        ),
        child: isLoading
            ? SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(textColor),
                ),
              )
            : Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null) ...[?icon, const SizedBox(width: 12)],
                  Text(label, style: textStyle ?? AppTextStyles.s18W600),
                ],
              ),
      ),
    );
  }
}
