import 'package:flutter/material.dart';
import 'package:ioe_app/pages/admission_pages/calendar_event.dart';
import 'package:intl/intl.dart';
import 'package:ioe_app/pages/admission_pages/eventProvider.dart';
import 'package:ioe_app/pages/admission_pages/taskwidget.dart';
import 'package:provider/provider.dart';

import 'package:ioe_app/pages/admission_pages/eventEditing_page.dart';

class EventViewingPage extends StatelessWidget {
  final Event event;
  const EventViewingPage({
    Key? key,
    required this.event,
  }) : super(key: key);

  Widget buildDateTime(Event event) {
    return Column(
      children: [
        buildDate(event.isAllDay ? 'All-Day' : 'From', event.from),
        if (!event.isAllDay) buildDate('To', event.to),
      ],
    );
  }

  Widget buildDate(String title, DateTime date) {
    DateFormat dateFormat = DateFormat("EEE,   yyyy-MM-dd,  HH:mm");

    String formattedDate = dateFormat.format(date);

    return Row(children: [
      Expanded(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Text(
        formattedDate,
        style: const TextStyle(
          fontSize: 14,
          // fontWeight: FontWeight.bold,
        ),
      )
    ]);
  }

  List<Widget> buildViewingActions(BuildContext context, Event event) => [
        // IconButton(
        //     icon: Icon(Icons.edit),
        //     onPressed: () => Navigator.of(context).pushReplacement(
        //         MaterialPageRoute(
        //             builder: (context) => EventEditingPage(event: event)))),
        IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              final provider =
                  Provider.of<EventProvider>(context, listen: false);
              provider.deleteEvent(event);
              Navigator.of(context).pop();
            }),
      ];
  @override
  Widget build(BuildContext context) {
    // final args = ModalRoute.of(context)!.settings.arguments as Events;

    return Scaffold(
      appBar: AppBar(
        leading: const CloseButton(),
        actions: buildViewingActions(context, event),
      ),
      body: ListView(
        padding: const EdgeInsets.all(32),
        children: [
          buildDateTime(event),
          const SizedBox(height: 32),
          Text(event.title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 30),
          Text(event.description,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                // color: Colors.white,
              )),
        ],
      ),
    );
  }
}
