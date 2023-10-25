import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterwave_standard/core/transaction_status.dart';
import 'package:flutterwave_standard/flutterwave.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PaymentScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  Future<void> handlePaymentInitialization() async {
    final Customer customer = Customer(
      name: "Flutterwave Developer",
      phoneNumber: "0247692516",
      email: "morrisonl.boamah@gmail.com",
    );

    final Flutterwave flutterwave = Flutterwave(
      context: context,
      publicKey: "7187392471159151072L",
      currency: "cedis",
      redirectUrl: "add-your-redirect-url-here",
      txRef: "add-your-unique-reference-here",
      amount: "3000",
      customer: customer,
      paymentOptions: "ussd, card, barter, payattitude",
      customization: Customization(title: "My Payment"),
      isTestMode: true,
    );

    try {
      final ChargeResponse response = await flutterwave.charge();
      if (response.status == TransactionStatus.SUCCESSFUL) {
        // Payment successful, handle the success response here
        if (kDebugMode) {
          print("Payment Successful!");
        }
        if (kDebugMode) {
          print("Transaction ID: ${response.transactionId}");
        }
      } else {
        // Payment failed or canceled, handle the failure response here
        if (kDebugMode) {
          print("Payment Failed or Canceled");
        }
      }
    } catch (error) {
      // Handle payment error
      if (kDebugMode) {
        print("Payment Error: $error");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutterwave Payment"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            handlePaymentInitialization();
          },
          child: const Text("Proceed to Payment"),
        ),
      ),
    );
  }
}
