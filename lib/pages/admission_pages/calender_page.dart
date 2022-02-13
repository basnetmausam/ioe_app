import 'package:flutter/material.dart';
// import 'package:ioe_app/pages/admission_pages/calendar_event.dart';
import 'package:ioe_app/pages/admission_pages/eventDatasource.dart';
import 'package:ioe_app/pages/admission_pages/taskwidget.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:ioe_app/utils/routes.dart';

import 'eventProvider.dart';

// class CalenderPage extends StatefulWidget {
//   const CalenderPage({Key? key}) : super(key: key);

//   @override
//   State<CalenderPage> createState() => _CalenderPageState();
// }

// class _CalenderPageState extends State<CalenderPage> {
//   // creating object
//   late Map<DateTime, List<Event>> selectedEvents;
//   CalendarFormat format = CalendarFormat.month;
//   DateTime selectedDay = DateTime.now();
//   DateTime focusedDay = DateTime.now();
//   TextEditingController _eventController = TextEditingController();

//   @override
//   void initState() {
//     selectedEvents = {};
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _eventController.dispose();
//     super.dispose();
//   }

//   List<Event> _getEventsFromDay(DateTime date) {
//     return selectedEvents[date] ?? [];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("IOE Calender"),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           TableCalendar(
//             focusedDay: focusedDay,
//             firstDay: DateTime(1989),
//             lastDay: DateTime(2050),
//             startingDayOfWeek: StartingDayOfWeek.sunday,

//             // to chnage foemat of calnedar in weeks,months
//             calendarFormat: format,
//             onFormatChanged: (CalendarFormat _format) {
//               setState(() => format = _format);
//             },
//             // select the day
//             onDaySelected: (DateTime selectDay, DateTime focusDay) {
//               setState(() {
//                 focusedDay = focusDay;
//                 selectedDay = selectDay;
//               });
//             },
//             selectedDayPredicate: (day) {
//               return isSameDay(selectedDay, day);
//             },

//             eventLoader: _getEventsFromDay,

//             // ignore: prefer_const_constructors
//             // styylinfg selected day
//             calendarStyle: const CalendarStyle(
//               isTodayHighlighted: true,
//               selectedDecoration: BoxDecoration(
//                 color: Colors.blueAccent,
//                 shape: BoxShape.circle,
//               ),
//               // ignore: prefer_const_constructors
//               selectedTextStyle: TextStyle(
//                 color: Colors.white,
//               ),
//               todayDecoration: BoxDecoration(
//                 color: Colors.purpleAccent,
//                 shape: BoxShape.circle,
//                 // borderRadius: BorderRadius.circular(10.0),
//               ),
//             ),
//             headerStyle: HeaderStyle(
//               formatButtonVisible: false,
//               titleCentered: true,
//             ),
//           ),
//           ..._getEventsFromDay(selectedDay).map((Event event) => ListTile(
//                 title: Text(event.title),
//               ))
//         ],
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: () {
//           showDialog(
//             context: context,
//             builder: (context) => AlertDialog(
//               title: Text('Add Event'),
//               content: TextFormField(
//                 controller: _eventController,
//               ),
//               actions: [
//                 TextButton(
//                     child: Text('Cancel'),
//                     onPressed: () => Navigator.pop(context)),
//                 TextButton(
//                   child: Text('OK'),
//                   // condition will be checked
//                   onPressed: () {
//                     if (_eventController.text.isEmpty) {
//                     } else {
//                       if (selectedEvents[selectedDay] != null) {
//                         selectedEvents[selectedDay]
//                             ?.add(Event(title: _eventController.text));
//                       } else {
//                         selectedEvents[selectedDay] = [
//                           Event(title: _eventController.text)
//                         ];
//                       }
//                     }
//                     Navigator.pop(context);
//                     _eventController.clear();
//                     setState(() {});
//                     return;
//                   },
//                 ),
//               ],
//             ),
//           );
//         },
//         label: Text("Add Event"),
//         icon: Icon(Icons.add),
//       ),
//     );
//   }
// }

class CalenderPage extends StatelessWidget {
  const CalenderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final events = Provider.of<EventProvider>(context).events;

    EventProvider provider;
    return Scaffold(
      appBar: AppBar(
          title: Text("IOE Calender"),
          centerTitle: true,
          backgroundColor: context.accentColor),
      body: SfCalendar(
        view: CalendarView.month,
        dataSource: EventDataSource(events),
        initialSelectedDate: DateTime.now(),
        onTap: (details) {
          final provider = Provider.of<EventProvider>(context, listen: false);
          provider.setDate(details.date!);
          showModalBottomSheet(
            context: context,
            builder: (context) => const TasksWidget(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.eventEditingRoute);
        },
        label: Text("Add Events"),
        icon: Icon(Icons.add),
      ),
    );
  }
}
