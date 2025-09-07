

String formatSalary(double? amount) {
  if (amount == null) {
    return 'N/A';
  }
  if (amount >= 1000) {
    return '${(amount / 1000.0).toStringAsFixed(1)}K';
  } else {
    return amount.toInt().toString();
  }
}