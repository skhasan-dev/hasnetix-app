import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hasnetix/src/common/index.dart'
    show AppButton, AppColors, AppTextStyles;
import 'package:hasnetix/src/core/index.dart' show Toasts;

class CodeEnter extends StatefulWidget {
  const CodeEnter({required this.onCodeSubmitted, super.key});

  final ValueChanged<String> onCodeSubmitted;

  @override
  State<CodeEnter> createState() => _CodeEnterState();
}

class _CodeEnterState extends State<CodeEnter> {
  final List<TextEditingController> codeControllers = List.generate(
    6,
    (_) => TextEditingController(),
  );

  final List<FocusNode> codeNodes = List.generate(6, (_) => FocusNode());

  @override
  void dispose() {
    for (final controller in codeControllers) {
      controller.dispose();
    }

    for (final node in codeNodes) {
      node.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'ENTER PAIRING CODE',
            style: AppTextStyles.s14W500.copyWith(color: AppColors.secText),
          ),

          const SizedBox(height: 24),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(6, (index) {
              return Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: index == 5 ? 0 : 12),
                  child: TextFormField(
                    controller: codeControllers[index],
                    focusNode: codeNodes[index],
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    cursorColor: AppColors.primary,
                    maxLength: 1,

                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],

                    onTapOutside: (_) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },

                    style: AppTextStyles.s20W600.copyWith(
                      color: AppColors.text,
                    ),

                    decoration: InputDecoration(
                      counterText: '',
                      filled: true,
                      fillColor: AppColors.chip,

                      contentPadding: const EdgeInsets.symmetric(vertical: 18),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: AppColors.border),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: AppColors.primary,
                          width: 1.5,
                        ),
                      ),
                    ),

                    onChanged: (value) {
                      /// Move forward
                      if (value.isNotEmpty) {
                        if (index < 5) {
                          codeNodes[index + 1].requestFocus();
                        } else {
                          FocusScope.of(context).unfocus();
                        }
                      }

                      /// Move backward
                      if (value.isEmpty && index > 0) {
                        codeNodes[index - 1].requestFocus();
                      }
                    },
                  ),
                ),
              );
            }),
          ),

          const SizedBox(height: 36),

          SizedBox(
            width: double.infinity,
            child: AppButton(label: 'Connect', onPressed: _validateCode),
          ),
        ],
      ),
    );
  }

  void _validateCode() {
    final code = codeControllers
        .map((controller) => controller.text.trim())
        .join();

    /// Validate length
    if (code.length != 6) {
      Toasts.showErrorToast(
        context,
        message: 'Please enter complete 6 digit code',
      );

      return;
    }

    /// Validate numeric
    final isValid = RegExp(r'^\d{6}$').hasMatch(code);

    if (!isValid) {
      Toasts.showErrorToast(
        context,
        message: 'Please enter valid numeric code',
      );

      return;
    }

    widget.onCodeSubmitted.call(code);
  }
}
