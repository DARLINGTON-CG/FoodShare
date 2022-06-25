import 'dart:io';

import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rive/rive.dart';

import '../../application/messaging/create_messages/create_messages_bloc.dart';
import '../../application/messaging/read_messages/read_messages_bloc.dart';
import '../../application/payments/payment_bloc.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/user.dart';
import '../../domain/core/errors.dart';
import '../../domain/messaging/chat_room.dart';
import '../../domain/payments/transfer.dart';
import '../../domain/posts/post.dart';
import '../../domain/utility/useful_functions.dart';
import '../../infrastructure/payments/rapyd_client.dart';
import '../../injector.dart';
import '../anim/page/slide_up.dart';
import '../picture/edit_picture_page.dart';
import 'widgets/body.dart';
import 'widgets/custom_dialog.dart';

//TODO: WORK ON VERIFYING USER BEFORE SENDING MESSAGE
//TODO: If current chat page is the owner or 0.0, don't show payment....
class ChatPage extends StatefulWidget {
  final ChatRoom chatRoom;
  final String chatRoomId;

  const ChatPage({Key? key, required this.chatRoom, required this.chatRoomId})
      : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  RapydClient _rapydClient = RapydClient();
  final String _sourceWalletId = "ewallet_d4581ff5b68ed3132e3f0010c5c2943d";
  final String _destinationWalletId =
      "ewallet_f279e2dc36938d79c4650abf21c0fac2";

  bool isUpdate = false;
  bool _isSending = false;

//   Future<void> _onPaymentRequestPressed() async {
//   final String? amount = await Navigator.of(context).push(
//     PageRouteBuilder(
//       opaque: false,
//       pageBuilder: (_, __, ___) => TransactionPage(
//         destinationWalletAddress: 'ewallet-123',
//       ),
//     ),
//   );

//   if(amount != null)
//   {
//     _messageInputKey.currentState?.addAttachment(
//       Attachment(
//         type: 'payment',
//         uploadState: UploadState.success(),
//         extraData: {"amount": int.parse(amount)},
//       ),
//     );
//   }
// }

  // Widget _buildPaymentMessage(
  //   BuildContext context,
  //   Message details,
  //   List<Attachment> _,
  // ) {
  //   final transaction = Transfer.fromJson(details.attachments.first.extraData);
  //   final transactionInfo = transaction.data;

  //   int amount = transactionInfo.amount;
  //   String destWalletAddress = transactionInfo.destinationEwalletId;
  //   String status = transactionInfo.status;

  //   return wrapAttachmentWidget(
  //     context,
  //     TransactionWidget(
  //       transaction: transaction,
  //       destWalletAddress: destWalletAddress,
  //       amount: amount,
  //       status: status,
  //     ),
  //     RoundedRectangleBorder(),
  //     true,
  //   );
  // }

  // Future<String> _performTransaction(
  //  int amount,
  // ) async {
  //   String returnValue = "";
  //   if (amount > 0) {
  //     setState(() {
  //       _isSending = true;
  //     });

  //     Transfer? transactionInfo = await _rapydClient.transferMoney(
  //       amount: amount,
  //       sourceWallet: _sourceWalletId,
  //       destinationWallet: _destinationWalletId,
  //     );
  //     if (transactionInfo != null) {
  //       Transfer? updatedInfo = await _rapydClient.transferResponse(
  //           id: transactionInfo.data.id, response: 'accept');
  //       returnValue = updatedInfo!.toJson().toString();
  //     }

  //     setState(() {
  //       _isSending = false;
  //     });
  //   }

  //   return returnValue;
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: BlocProvider<PaymentBloc>(
        create: (BuildContext context) => getIt<PaymentBloc>(),
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.5,
            shadowColor: Colors.grey.withOpacity(0.3),
            title: BlocBuilder<ReadMessagesBloc, ReadMessagesState>(
              builder: (BuildContext context, ReadMessagesState state) {
                return Text(
                  state.map(
                    initial: (_) => getUserId() !=
                            widget.chatRoom.requester.userId.getOrCrash()
                        ? widget.chatRoom.requester.username.getOrCrash()
                        : widget.chatRoom.owner.username.getOrCrash(),
                    loadingProgress: (_) => getUserId() !=
                            widget.chatRoom.requester.userId.getOrCrash()
                        ? widget.chatRoom.requester.username.getOrCrash()
                        : widget.chatRoom.owner.username.getOrCrash(),
                    // ignore: always_specify_types
                    loadSuccess: (success) {
                      ChatRoom element = success.chatRoom.iter.firstWhere(
                          (ChatRoom chatRoomElem) =>
                              widget.chatRoomId ==
                              (chatRoomElem.post.id.getOrCrash() +
                                  chatRoomElem.requester.username.getOrCrash()),
                          orElse: () => ChatRoom.empty());

                      if (element.messages.length != 0) {
                        isUpdate = true;
                      }

                      if (success.chatRoom.isEmpty() ||
                          !(element.owner.userId.isValid())) {
                        return widget.chatRoom.owner.username.getOrCrash();
                      } else {
                        final ChatRoom elm = success.chatRoom.iter.firstWhere(
                            (ChatRoom chatRoomElem) =>
                                widget.chatRoomId ==
                                (chatRoomElem.post.id.getOrCrash() +
                                    chatRoomElem.requester.username
                                        .getOrCrash()));
                        final String username =
                            getUserId() == elm.owner.userId.getOrCrash()
                                ? elm.requester.username.getOrCrash()
                                : elm.owner.username.getOrCrash();
                        return username;
                      }
                    },
                    loadFailure: (_) => getUserId() !=
                            widget.chatRoom.requester.userId.getOrCrash()
                        ? widget.chatRoom.requester.username.getOrCrash()
                        : widget.chatRoom.owner.username.getOrCrash(),
                  ),
                  style: GoogleFonts.lato(
                      fontSize: 17, fontWeight: FontWeight.bold),
                );
              },
            ),
            actions: <Widget>[
              BlocBuilder<ReadMessagesBloc, ReadMessagesState>(
                builder: (BuildContext context, ReadMessagesState state) {
                  final Post? post = state.map(
                    initial: (_) => null,
                    loadingProgress: (_) => null,
                    // ignore: always_specify_types
                    loadSuccess: (success) {
                      ChatRoom element = success.chatRoom.iter.firstWhere(
                          (ChatRoom chatRoomElem) =>
                              widget.chatRoomId ==
                              (chatRoomElem.post.id.getOrCrash() +
                                  chatRoomElem.requester.username.getOrCrash()),
                          orElse: () => ChatRoom.empty());
                      if (success.chatRoom.isEmpty() ||
                          !(element.owner.userId.isValid())) {
                        return widget.chatRoom.post;
                      } else {
                        final ChatRoom elm = success.chatRoom.iter.firstWhere(
                            (ChatRoom chatRoomElem) =>
                                widget.chatRoomId ==
                                (chatRoomElem.post.id.getOrCrash() +
                                    chatRoomElem.requester.username
                                        .getOrCrash()));

                        return elm.post;
                      }
                    },
                    loadFailure: (_) => null,
                  );
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: IconButton(
                        onPressed: () {
                          if (post != null) {
                            showCustomDialogBox(context, post);
                          }
                        },
                        icon: Icon(
                          Icons.post_add_rounded,
                          size: 25,
                          color: Theme.of(context).iconTheme.color,
                        )),
                  );
                },
              ),
              BlocConsumer<PaymentBloc, PaymentStates>(
                listener: (BuildContext context, PaymentStates state) {
                  state.map(
                    initial: (_) {},
                    messageError: (_) {

                      setState((){
                          _isSending = false;
                      });
                      Fluttertoast.showToast(
                        msg: "Error sending payment details",
                        backgroundColor: Colors.teal,
                        fontSize: 14,
                        gravity: ToastGravity.BOTTOM,
                        textColor: Colors.white,
                      );
                    },
                    paymentError: (_) {
                      
                      setState((){
                          _isSending = false;
                      });
                      Fluttertoast.showToast(
                        msg: "Payment error",
                        backgroundColor: Colors.teal,
                        fontSize: 14,
                        gravity: ToastGravity.BOTTOM,
                        textColor: Colors.white,
                      );
                    },
                    processingPayment: (_) {
                         setState((){
                          _isSending = true;
                      });
                      Fluttertoast.showToast(
                        msg: "Processing payment",
                        backgroundColor: Colors.teal,
                        fontSize: 14,
                        gravity: ToastGravity.BOTTOM,
                        textColor: Colors.white,
                      );
                    },
                    sendingCompletedMessage: (_) {
                         setState((){
                          _isSending = false;
                      });
                      //0203703391
                      Fluttertoast.showToast(
                        msg: "Payment completed",
                        backgroundColor: Colors.teal,
                        fontSize: 14,
                        gravity: ToastGravity.BOTTOM,
                        textColor: Colors.white,
                      );
                    },
                    verifyPayment: (_) {
                         setState((){
                          _isSending = true;
                      });
                      Fluttertoast.showToast(
                        msg: "Verifying payment",
                        backgroundColor: Colors.teal,
                        fontSize: 14,
                        gravity: ToastGravity.BOTTOM,
                        textColor: Colors.white,
                      );
                    },
                  );
                },
                builder: (BuildContext context, PaymentStates state) {
                  return InkWell(
                    onTap: () async {
                      final PaymentBloc paymentBloc =
                          BlocProvider.of<PaymentBloc>(context);
                      showModalBottomSheet<void>(
                          context: context,
                          useRootNavigator: true,
                          enableDrag: true,
                          builder: (BuildContext context) => StatefulBuilder(
                                builder: (BuildContext context,
                                    StateSetter setStateModal) {
                                  return SizedBox(
                                    height: 270,
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 55,
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                        color: Theme.of(context)
                                                                    .iconTheme
                                                                    .color ==
                                                                Colors.black
                                                            ? Colors.grey
                                                                .withOpacity(
                                                                    0.1)
                                                            : Colors.black
                                                                .withOpacity(
                                                                    0.1)))),
                                            child: ListTile(
                                              title: Text(
                                                "Critical action",
                                                style: GoogleFonts.lato(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    color: const Color(
                                                        0xFF3212F1)),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      InkWell(
                                                        onTap: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child: Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .all(10),
                                                          height: 100,
                                                          width: 150,
                                                          alignment:
                                                              Alignment.center,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color(
                                                                    0xFFFFAD05)
                                                                .withOpacity(
                                                                    0.1),
                                                            border: Border.all(
                                                                color: const Color(
                                                                    0xFFFFAD05)),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: ListTile(
                                                              title: Text(
                                                                  "Nope!",
                                                                  style: GoogleFonts.lato(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: const Color(
                                                                          0xFFFFAD05),
                                                                      fontSize:
                                                                          15)),
                                                              subtitle: Text(
                                                                  "I don't want to do a transaction now...",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText1)),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () async {
                                                          //TODO: CHANGE TO USER'S ACTUAL AMOUNT
                                                          //TODO: CHANGE TO SOURCE WALLET ID AND DESTINATION ID SOON
                                                          paymentBloc.add(PaymentEvents
                                                              .performTransaction(
                                                                  2,
                                                                  _sourceWalletId,
                                                                  _destinationWalletId,
                                                                  widget
                                                                      .chatRoom));
                                                          Navigator.of(context)
                                                              .pop();

                                                          // final String result = await _performTransaction(
                                                          //     1);
                                                          // print(result);
                                                          // Navigator.of(context).pop();
                                                        },
                                                        child: Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .all(10),
                                                          height: 100,
                                                          width: 150,
                                                          alignment:
                                                              Alignment.center,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    35,
                                                                    238,
                                                                    69)
                                                                .withOpacity(
                                                                    0.1),
                                                            border: Border.all(
                                                                color: const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    37,
                                                                    237,
                                                                    120)),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: ListTile(
                                                              title: Text(
                                                                  "Yes, continue.",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2
                                                                      ?.copyWith(
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          color: const Color.fromARGB(
                                                                              255,
                                                                              37,
                                                                              237,
                                                                              120),
                                                                          fontSize:
                                                                              15)),
                                                              subtitle:
                                                                  Text.rich(
                                                                      TextSpan(
                                                                          text:
                                                                              "Money will be sent to wallet of -- ",
                                                                          children: <
                                                                              TextSpan>[
                                                                            TextSpan(
                                                                                text: "@${widget.chatRoom.owner.username.getOrCrash()}",
                                                                                style: Theme.of(context).textTheme.bodyText1?.copyWith(color: const Color(0xFF3212F1)))
                                                                          ]),
                                                                      style: Theme.of(context)
                                                                          .textTheme
                                                                          .bodyText1)),
                                                        ),
                                                      ),
                                                    ],
                                                  )))
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ));
                    },
                    //onTap: _onPaymentRequestPressed,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: !_isSending
                          ?const Icon(
                              Icons.paid_rounded,
                              size: 25,
                              color: Color(0xFF3212F1),
                            ): const SizedBox(
                              height: 30,
                              width: 30,
                              child: RiveAnimation.asset(
                                'assets/loading.riv',
                              ),
                            )
                         
                    ),
                  );
                },
              ),
            ],
          ),
          // bottomSheet: BlocProvider<CreateMessagesBloc>(
          //     create: (BuildContext context) => getIt<CreateMessagesBloc>()
          //       ..add(CreateMessagesEvents.initialized(
          //           dartz.optionOf(widget.chatRoom))),
          //     child: BlocListener<CreateMessagesBloc, CreateMessagesState>(
          //         listener: (BuildContext context, CreateMessagesState state) {},
          //         child: BottomSheet(
          //             onClosing: () {},
          //             elevation: 0.5,
          //             enableDrag: false,
          //             builder: (BuildContext context) {
          //               return Container(
          //                 padding: const EdgeInsets.symmetric(
          //                   horizontal: 10,
          //                   vertical: 12,
          //                 ),
          //                 decoration: BoxDecoration(
          //                   color: Theme.of(context).scaffoldBackgroundColor,
          //                   boxShadow: <BoxShadow>[
          //                     BoxShadow(
          //                         blurRadius: 1,
          //                         color: Colors.grey.withOpacity(0.5),
          //                         offset: const Offset(0, 1),
          //                         spreadRadius: 0.5)
          //                   ],
          //                 ),
          //                 child: SafeArea(
          //                   child: Container(
          //                     padding: const EdgeInsets.only(
          //                       right: 20 * 0.75,
          //                     ),
          //                     child: Row(
          //                       crossAxisAlignment: CrossAxisAlignment.end,
          //                       children: <Widget>[
          //                         Padding(
          //                           padding: const EdgeInsets.only(right: 10),
          //                           child: InkWell(
          //                             onTap: () async {
          //                               final XFile? imageFilePicked =
          //                                   await _imagePicker.pickImage(
          //                                       source: ImageSource.gallery);
          //                               if (imageFilePicked != null) {
          //                                 final File converted =
          //                                     File((imageFilePicked).path);
          //                                 Future<void>.delayed(const Duration())
          //                                     .then((_) => Navigator.of(context)
          //                                             .push(SlideUpAnim(
          //                                                 page: EditPicturePage(
          //                                                     picture:
          //                                                         converted)))
          //                                             // ignore: always_specify_types
          //                                             .then((value) {
          //                                           if (value != null) {
          //                                             context
          //                                                 .read<
          //                                                     CreateMessagesBloc>()
          //                                                 .add(
          //                                                     CreateMessagesEvents
          //                                                         .fileChanged(
          //                                                             value));
          //                                             context
          //                                                 .read<
          //                                                     CreateMessagesBloc>()
          //                                                 .add(
          //                                                     CreateMessagesEvents
          //                                                         .saved(
          //                                                             isUpdate));
          //                                           }
          //                                           // setState(() {
          //                                           //   _userImage = value;
          //                                           // });
          //                                         }));
          //                               }
          //                             },
          //                             child: const Icon(
          //                               Icons.attach_file_rounded,
          //                               color: Color.fromARGB(255, 58, 35, 189),
          //                             ),
          //                           ),
          //                         ),
          //                         Expanded(
          //                           child: TextField(
          //                             style: Theme.of(context)
          //                                 .textTheme
          //                                 .bodyText2
          //                                 ?.copyWith(fontSize: 17),
          //                             textAlignVertical: TextAlignVertical.bottom,
          //                             controller: controller,
          //                             onChanged: (String value) {
          //                               context.read<CreateMessagesBloc>().add(
          //                                   CreateMessagesEvents.messageChanged(
          //                                       value));
          //                             },
          //                             minLines: 1,
          //                             maxLines: 5,
          //                             maxLength: 200,
          //                             maxLengthEnforcement:
          //                                 MaxLengthEnforcement.enforced,
          //                             decoration: InputDecoration(
          //                                 hintText: 'Message',

          //                                 counterText: "",
          //                                 contentPadding:
          //                                     const EdgeInsets.only(bottom: 0),
          //                                 isDense: true,
          //                                 border: InputBorder.none,
          //                                 hintStyle: GoogleFonts.lato(
          //                                     color: Colors.grey, fontSize: 15)),
          //                             keyboardType: TextInputType.multiline,
          //                           ),
          //                         ),
          //                         const SizedBox(width: 8),
          //                         InkWell(
          //                           onTap: () {
          //                             if (context
          //                                 .read<CreateMessagesBloc>()
          //                                 .state
          //                                 .currentMessage
          //                                 .isNotEmpty) {
          //                               controller.clear();
          //                               context.read<CreateMessagesBloc>().add(
          //                                   CreateMessagesEvents.saved(isUpdate));
          //                             }
          //                           },
          //                           child: const Icon(
          //                             Icons.send,
          //                             color: Color(0xFF3212F1),
          //                           ),
          //                         ),
          //                       ],
          //                     ),
          //                   ),
          //                 ),
          //               );
          //             })
          //         //}
          //         )),
          body: Body(
            chatRoomId: widget.chatRoomId,
            chatRoom: widget.chatRoom,
            isUpdate: isUpdate,
          ),
        ),
      ),
    );
  }
}
