import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class TermsAndCondition extends StatefulWidget {
  final Function(bool)? onChanged;
  final bool initialValue;

  const TermsAndCondition({
    super.key,
    this.onChanged,
    this.initialValue = false,
  });

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(14, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Checkbox(
            value: isChecked,
            activeColor: AppColors.deepGreenrColor,
            onChanged: (value) {
              if (value != null) {
                setState(() {
                  isChecked = value;
                });
                if (widget.onChanged != null) {
                  widget.onChanged!(value);
                }
              }
            },
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text.rich(
                TextSpan(
                  text: 'من خلال إنشاء حساب ، فإنك توافق على',
                  style: AppTextStyles.style16w600.copyWith(
                    color: AppColors.silverColor,
                  ),
                  children: [
                    TextSpan(
                      text: 'الشروط والأحكام الخاصة بنا',
                      style: AppTextStyles.style16w600.copyWith(
                        color: AppColors.greenrColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
