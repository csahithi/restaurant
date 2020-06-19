import 'package:flutter/material.dart';
import 'package:restaurant/components/rounded_button.dart';
import 'package:restaurant/screens/paytm_screen.dart';
import 'package:square_in_app_payments/models.dart';
import 'package:restaurant/constants.dart';
import 'package:square_in_app_payments/in_app_payments.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/services.dart';

class PaymentScreen extends StatefulWidget {
  static const String id = 'payment_screen';
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int payment;
  int totalAmount = 0;
  Razorpay _razorpay;
  void _pay() {
    InAppPayments.setSquareApplicationId('YOUR_SQUAREAPP_ID');
    InAppPayments.startCardEntryFlow(
      onCardNonceRequestSuccess: _cardNonceRequestSuccess,
      onCardEntryCancel: _cardEntryCancel,
    );
  }

  void _cardEntryCancel() {
    //cancel
  }

  void _cardNonceRequestSuccess(CardDetails result) {
    print(result.nonce);

    InAppPayments.completeCardEntry(
      onCardEntryComplete: _cardEntryComplete,
    );
  }

  void _cardEntryComplete() {
    //complete
  }

  TextEditingController _amountController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  void openCheckout() async {
    var options = {
      'key': 'YOUR_RAZORPAY_KEY',
      'amount': totalAmount * 100,
      'name': 'EatEasy',
      'description': 'Checkout',
      'prefill': {'contact': '', 'email': ''},
      'theme': {'color': '#90ee90'},
      'external': {
        'wallets': ['paytm']
      }
    };
    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint(e);
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(msg: "SUCCESS" + response.paymentId);
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
        msg: "ERROR" + response.code.toString() + " - " + response.message);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    Fluttertoast.showToast(msg: "EXTERNAL WALLET" + response.walletName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen.shade400,
        title: Text('Payment'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Enter amount', border: UnderlineInputBorder()),
              onChanged: (value) {
                setState(() {
                  totalAmount = num.parse(value);
                });
              },
            ),
            SizedBox(
              height: 24.0,
            ),
//            RoundedButton(
//              title: 'Credit Card',
//              colour: Colors.pink.shade500,
//              onPressed: _pay,
//            ),
//            RoundedButton(
//              title: 'PayTM',
//              colour: Colors.pink.shade500,
//              onPressed: () {
//                Navigator.of(context).push(MaterialPageRoute(
//                    builder: (context) => PaytmScreen(
//                          amount: _amountController.text,
//                        )));
//              },
//            ),
            RoundedButton(
              title: 'Pay',
              colour: Colors.pink.shade500,
              onPressed: () {
                openCheckout();
              },
            ),
          ],
        ),
      ),
    );
  }
}
