import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rive/rive.dart';

import '../../../application/payments/payment_bloc.dart';
import '../../../domain/messaging/chat_room.dart';

enum PaymentState {
  initial,
  processingPayment,
  paymentError,
  messageError,
  verifyPayment,
  sendingCompletedMessage
}

void showPaymentSheet(
    {required BuildContext context,
    required PaymentBloc paymentBloc,
    required ChatRoom chatRoom,
    required String destinationWallet,
    required String sourceWallet}) {
  showModalBottomSheet<void>(
      context: context,
      useRootNavigator: true,
      enableDrag: true,
      builder: (BuildContext context) {
        bool isSubmitting = false;
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setStateModal) {
          paymentBloc.state.map(initial: (_) {
            isSubmitting = false;
          }, messageError: (_) {
            setStateModal(() {
              isSubmitting = true;
              // expandedWidget = const Center(
              //   child: Text("Failed to send user message."),
              // );
            });
          }, paymentError: (_) {
            setStateModal(() {
              // expandedWidget = const Center(
              //   child: Text("Failed to process payments"),
              // );
              isSubmitting = true;
            });
          }, processingPayment: (_) {
            setStateModal(() {
              // expandedWidget = Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: <Widget>[
              //       const SizedBox(
              //         height: 160,
              //         child: RiveAnimation.asset(
              //           'assets/loading.riv',
              //         ),
              //       ),
              //       const SizedBox(height: 10),
              //       Text("Processing payment",
              //           style: Theme.of(context).textTheme.bodyText2)
              //     ]);
              isSubmitting = true;
            });
          }, sendingCompletedMessage: (_) {
            setStateModal(() {
              // expandedWidget = const Center(
              //   child: Text("Payment completed"),
              // );
              isSubmitting = true;
            });
          }, verifyPayment: (_) {
            setStateModal(() {
              isSubmitting = true;
            });
          });

          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: 270,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Theme.of(context).iconTheme.color ==
                                        Colors.black
                                    ? Colors.grey.withOpacity(0.1)
                                    : Colors.black.withOpacity(0.1)))),
                    child: ListTile(
                      title: Text(
                        "Critical action",
                        style: GoogleFonts.lato(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF3212F1)),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: !isSubmitting
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.all(10),
                                        height: 100,
                                        width: 150,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFFFAD05)
                                              .withOpacity(0.1),
                                          border: Border.all(
                                              color: const Color(0xFFFFAD05)),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: ListTile(
                                            title: Text("Nope!",
                                                style: GoogleFonts.lato(
                                                    fontWeight: FontWeight.bold,
                                                    color:
                                                        const Color(0xFFFFAD05),
                                                    fontSize: 15)),
                                            subtitle: Text(
                                                "I don't want to do a transaction now...",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1)),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        //TODO: CHANGE TO USER'S ACTUAL AMOUNT
                                        //TODO: CHANGE TO SOURCE WALLET ID AND DESTINATION ID SOON
                                        paymentBloc.add(
                                            PaymentEvents.performTransaction(
                                                2,
                                                sourceWallet,
                                                destinationWallet,
                                                chatRoom));
                                        // final String result = await _performTransaction(
                                        //     1);
                                        // print(result);
                                        // Navigator.of(context).pop();
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.all(10),
                                        height: 100,
                                        width: 150,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                                  255, 35, 238, 69)
                                              .withOpacity(0.1),
                                          border: Border.all(
                                              color: const Color.fromARGB(
                                                  255, 37, 237, 120)),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: ListTile(
                                            title: Text("Yes, continue.",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2
                                                    ?.copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 37, 237, 120),
                                                        fontSize: 15)),
                                            subtitle: Text.rich(
                                                TextSpan(
                                                    text:
                                                        "Money will be sent to wallet of -- ",
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                          text:
                                                              "@${chatRoom.owner.username.getOrCrash()}",
                                                          style: Theme.of(
                                                                  context)
                                                              .textTheme
                                                              .bodyText1
                                                              ?.copyWith(
                                                                  color: const Color(
                                                                      0xFF3212F1)))
                                                    ]),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1)),
                                      ),
                                    ),
                                  ],
                                )
                              : Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                      const SizedBox(
                                        height: 160,
                                        child: RiveAnimation.asset(
                                          'assets/loading.riv',
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text("Verifying payment",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2)
                                    ])))
                ],
              ),
            ),
          );
        });
      });
}

class StatefulBottomSheet extends StatefulWidget {
  final bool isSending;
  //final ValueChanged<bool> valueChanged;
  final PaymentBloc paymentBloc;
  final ChatRoom chatRoom;
  final String destinationWallet;
  final String sourceWallet;
  const StatefulBottomSheet(
      {Key? key,
      required this.isSending,
     // required this.valueChanged,
      required this.paymentBloc,
      required this.chatRoom,
      required this.destinationWallet,
      required this.sourceWallet}):super(key:key);

  @override
  StatefulBottomSheetState createState() => StatefulBottomSheetState();
}

class StatefulBottomSheetState extends State<StatefulBottomSheet> {
  late bool _isSending;
  @override
  void initState() {
    _isSending = widget.isSending;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 270,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 55,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color:
                              Theme.of(context).iconTheme.color == Colors.black
                                  ? Colors.grey.withOpacity(0.1)
                                  : Colors.black.withOpacity(0.1)))),
              child: ListTile(
                title: Text(
                  "Critical action",
                  style: GoogleFonts.lato(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF3212F1)),
                ),
              ),
            ),
            Expanded(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: !_isSending
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  margin: const EdgeInsets.all(10),
                                  height: 100,
                                  width: 150,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFFAD05)
                                        .withOpacity(0.1),
                                    border: Border.all(
                                        color: const Color(0xFFFFAD05)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: ListTile(
                                      title: Text("Nope!",
                                          style: GoogleFonts.lato(
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0xFFFFAD05),
                                              fontSize: 15)),
                                      subtitle: Text(
                                          "I don't want to do a transaction now...",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1)),
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  //TODO: CHANGE TO USER'S ACTUAL AMOUNT
                                  //TODO: CHANGE TO SOURCE WALLET ID AND DESTINATION ID SOON
                                  widget.paymentBloc.add(
                                      PaymentEvents.performTransaction(
                                          2,
                                          widget.sourceWallet,
                                          widget.destinationWallet,
                                          widget.chatRoom));
                                  // final String result = await _performTransaction(
                                  //     1);
                                  // print(result);
                                  // Navigator.of(context).pop();
                                },
                                child: Container(
                                  margin: const EdgeInsets.all(10),
                                  height: 100,
                                  width: 150,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 35, 238, 69)
                                            .withOpacity(0.1),
                                    border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 37, 237, 120)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: ListTile(
                                      title: Text("Yes, continue.",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2
                                              ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: const Color.fromARGB(
                                                      255, 37, 237, 120),
                                                  fontSize: 15)),
                                      subtitle: Text.rich(
                                          TextSpan(
                                              text:
                                                  "Money will be sent to wallet of -- ",
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text:
                                                        "@${widget.chatRoom.owner.username.getOrCrash()}",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText1
                                                        ?.copyWith(
                                                            color: const Color(
                                                                0xFF3212F1)))
                                              ]),
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1)),
                                ),
                              ),
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                                const SizedBox(
                                  height: 160,
                                  child: RiveAnimation.asset(
                                    'assets/loading.riv',
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text("Verifying payment",
                                    style:
                                        Theme.of(context).textTheme.bodyText2)
                              ])))
          ],
        ),
      ),
    );
  }
}
