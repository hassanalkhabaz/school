import 'package:flu/api/api_helper.dart';
import 'package:flu/model/payment_model.dart';
import 'package:flu/ui/widgets/CardView.dart';
import 'package:flutter/material.dart';

class Payments extends StatefulWidget {
  @override
  _PaymentsState createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  bool _isLoading = true;
  List<PaymentModel> paymentsList = [];

  double horizontalPadding = 10;
  TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    textStyle = TextStyle(
      fontSize: 15,
      color: Colors.black54,
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Payments'),
        backgroundColor: Colors.purple[400],
        bottom: buildBottomShape(),
      ),
      body: !_isLoading
          ? paymentsList != null
              ? Container(
                  child: Container(
                      child: ListView.builder(
                          itemCount: paymentsList.length,
                          itemBuilder: (context, index) {
                            return CardView(
                              cardHeader: Text(
                                paymentsList[index].paidDate.toString(),
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                ),
                              ),
                              cardBody: buildCardBody(
                                paymentsList[index].paidFees.toString(),
                                paymentsList[index].unPaidFees.toString(),
                              ),
                            );
                          })))
              : Center(
                  child: Text('No Alerts Found'),
                )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  PreferredSize buildBottomShape() {
    return PreferredSize(
      preferredSize: Size(0, 20),
      child: Container(
        height: 15,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(80),
            topRight: Radius.circular(80),
          ),
        ),
      ),
    );
  }

  Widget buildCardBody(String paid, String remain) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          title: Text('Paid Amount', style: textStyle),
          trailing: Text(
            paid,
            style: textStyle.copyWith(color: Colors.green),
          ),
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          title: Text('Remaining amount', style: textStyle),
          trailing: Text(
            remain,
            style: textStyle.copyWith(color: Colors.red),
          ),
        ),
      ],
    );
  }

// Secreen Logic
  void fetchPaymentsData() async {
    final data = await ApiHelper().getPayments(1);
    setState(() {
      paymentsList = data;
      _isLoading = false;
    });
  }
}
