import 'package:flutter/material.dart';
import 'package:m360ict/common/utils/colors.dart';

class ColorSetter{
  ColorSetter._();

  static const Map<String, Color> chipTextColors = {
    'New': AppColors.chipNew,
    'First response overdue': AppColors.chipFirstResponseOverdue,
    'Customer responded': AppColors.chipCustomerResponded,
    'Overdue': AppColors.chipOverdue,
  };

  static const Map<String, Color> chipBgColors = {
    'New': AppColors.chipNewBg,
    'First response overdue': AppColors.chipFirstResponseOverdueBg,
    'Customer responded': AppColors.chipCustomerRespondedBg,
    'Overdue': AppColors.chipOverdueBg,
  };

  static const Map<String, Color> priorityDotColors = {
    'Low': AppColors.low,
    'Medium': AppColors.medium,
    'Urgent': AppColors.urgent,
  };
}