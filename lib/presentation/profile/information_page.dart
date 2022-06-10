import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../application/user_data/user_data_read/user_data_read_bloc.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Information',
              style: GoogleFonts.lato(fontSize: 17)),
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.close_rounded,
              )),
          centerTitle: true,
        ),
        body: BlocBuilder<UserDataReadBloc, UserDataReadState>(
            builder: (BuildContext context, UserDataReadState state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              
              Container(
                width: 90,
                height: 90,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: state.map(
                        initial: (_) => Colors.grey.withOpacity(0.2),
                        loadingProgress: (_) =>
                            Colors.blueGrey.withOpacity(0.2),
                        // ignore: always_specify_types
                        loadSuccess: (success) => Colors.grey.withOpacity(0.2),
                        // ignore: always_specify_types
                        loadFailure: (failure) {
                          return Colors.red.withOpacity(0.2);
                        }),
                    borderRadius: BorderRadius.circular(25),
                    image: state.map(
                        initial: (_) => null,
                        loadingProgress: (_) => null,
                        // ignore: always_specify_types
                        loadSuccess: (success) => DecorationImage(
                            image: CachedNetworkImageProvider(
                                success.userData.imageUrl.getOrCrash()),
                            fit: BoxFit.cover),
                        loadFailure: (_) => null)),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    "@${state.map(initial: (_) => "...", loadingProgress: (_) => "...",
                        // ignore: always_specify_types
                        loadSuccess: (success) => success.userData.username.getOrCrash(), loadFailure: (_) => "...")}",
                    style: GoogleFonts.lato(
                        fontSize: 14, color: const Color(0xFF3212F1)),
                  ),
                ),
              ),
           
             
            ],
          );
        }));
  }
}
