import 'package:flutter/material.dart';
import 'package:fodaapp/core/helpers/spacing.dart';
import 'package:fodaapp/core/theming/colors.dart';
import 'package:fodaapp/core/theming/styles.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowercase;
  final bool hasUppercase;
  final bool hasDigit;
  final bool hasMinLength;
  final bool hasSpecialChar;

  const PasswordValidations({
    super.key,
    required this.hasLowercase,
    required this.hasUppercase,
    required this.hasDigit,
    required this.hasMinLength,
    required this.hasSpecialChar,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least one lowercase letter', hasLowercase),
        verticalSpace(2),
        buildValidationRow('At least one uppercase letter', hasUppercase),
        verticalSpace(2),
        buildValidationRow('At least one digit', hasDigit),
        verticalSpace(2),
        buildValidationRow('At least one special character', hasSpecialChar),
        verticalSpace(2),
        buildValidationRow('Minimum 8 characters', hasMinLength),
      ],
    );
  }

  buildValidationRow(String text, bool hasValidate) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        CircleAvatar(radius: 2.5, backgroundColor: ColorsApp.gray),
        horizontalSpace(6),
        Expanded(
          child: Text(
            text,
            style: TextStyles.font13DarkblueRegular.copyWith(
              decoration: hasValidate
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
              color: hasValidate ? ColorsApp.gray : ColorsApp.DarkBlue,
              decorationThickness: 2,
              decorationColor: Colors.green,
            ),
          ),
        ),
      ],
    );
  }
}
