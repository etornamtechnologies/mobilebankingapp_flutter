import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AccountDetailsCard extends StatelessWidget {
  final String accountNumber;
  final String accountName;
  final String currency;
  final double availableBalance;
  final double bookBalance;
  final String accountType;

  const AccountDetailsCard({
    super.key,
    required this.accountNumber,
    required this.accountName,
    required this.currency,
    required this.availableBalance,
    required this.bookBalance,
    required this.accountType,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final media = MediaQuery.of(context);
    final NumberFormat formatter = NumberFormat.decimalPatternDigits(
      decimalDigits: 2,
      locale: 'en_us',
    );
    return Card(
      margin: const EdgeInsets.all(10.0),
      elevation: 1,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ),
      ),
      child: Container(
        width: media.size.width - 40,
        decoration: BoxDecoration(
          // gradient: RadialGradient(
          //   colors: [
          //     theme.colorScheme.primary,
          //     theme.colorScheme.secondary,
          //   ],
          // ),
          // color: theme.colorScheme.secondary,
          // gradient: LinearGradient(
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          //   colors: [theme.colorScheme.secondary, theme.colorScheme.primary],
          // ),
          gradient: SweepGradient(
            center: Alignment.center,
            startAngle: 0.0,
            endAngle: 3.14,
            colors: [theme.colorScheme.primary, theme.colorScheme.secondary],
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(19.0),
          ),
        ),
        padding: const EdgeInsets.all(5.0),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Welcome",
                    style: TextStyle(
                        color: theme.colorScheme.onPrimary,
                        fontSize: 20,
                        fontWeight: FontWeight.w200),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                      accountName,
                      style: TextStyle(
                        color: theme.colorScheme.onPrimary,
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Your last login was on 27/06/2022',
                    style: TextStyle(
                      color: theme.colorScheme.onPrimary,
                      fontSize: 13,
                      fontWeight: FontWeight.w200,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    accountNumber,
                    style: TextStyle(
                      color: theme.colorScheme.onPrimary,
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    accountType.toUpperCase(),
                    style: TextStyle(
                      color: theme.colorScheme.onPrimary,
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          '$currency ${formatter.format(availableBalance)}',
                          style: TextStyle(
                              color: theme.colorScheme.onPrimary,
                              fontWeight: FontWeight.w400,
                              fontSize: 20),
                        ),
                      ),
                      Text(
                        'Available balance',
                        style: TextStyle(
                          color: theme.colorScheme.onPrimary,
                          fontWeight: FontWeight.w200,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          '$currency ${formatter.format(bookBalance)}',
                          style: TextStyle(
                              color: theme.colorScheme.onPrimary,
                              fontWeight: FontWeight.w400,
                              fontSize: 20),
                        ),
                      ),
                      Text(
                        'Book Balance',
                        style: TextStyle(
                            color: theme.colorScheme.onPrimary,
                            fontWeight: FontWeight.w100,
                            fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
