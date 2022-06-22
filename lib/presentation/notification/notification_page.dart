import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  final String lastMessage;

  const NotificationPage({Key? key, required this.lastMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        elevation: 0.5,
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon:const Icon(Icons.close)),
      ),
      floatingActionButton: FloatingActionButton.small(
       tooltip: "Clear all",

        onPressed: (){},
        child: Icon(Icons.clear_all_rounded,color:Theme.of(context).iconTheme.color)
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title:Text ("Amaxing offers", style:Theme.of(context).textTheme.bodyText2?.copyWith(fontWeight:FontWeight.bold)),
            subtitle: Text(lastMessage,style:Theme.of(context).textTheme.bodyText1 ),
          );
        },
        // child: Text("No new notifications",
        //     style: Theme.of(context).textTheme.bodyText2),
      ),
    );
  }
}
