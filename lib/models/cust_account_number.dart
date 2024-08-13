class CustomerAccountNumber {
  final String accountName;
  final String accountNumber;
  final String accountType;
  final double availableBalance;
  final double bookBalance;
  final String currencyCode;

  CustomerAccountNumber({
    required this.accountName,
    required this.accountNumber,
    required this.accountType,
    required this.availableBalance,
    required this.bookBalance,
    required this.currencyCode,
  });

  factory CustomerAccountNumber.fromJson(Map<String, dynamic> json) {
    return CustomerAccountNumber(
      accountName: json['accountName'],
      accountNumber: json['accountNumber'],
      accountType: json['accountType'],
      availableBalance: json['availableBalance'],
      bookBalance: json['bookBalance'],
      currencyCode: json['currencyCode'],
    );
  }
}
