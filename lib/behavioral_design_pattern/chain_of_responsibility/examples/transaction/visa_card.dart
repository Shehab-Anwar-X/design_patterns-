class VisaCard {
  final String cardNumber;
  final int cvc;
  final String endDate;
  final double amount;

  const VisaCard({
    required this.cardNumber,
    required this.cvc,
    required this.endDate,
    required this.amount,
  });
}
