import 'package:flutter/material.dart' hide CalendarDatePicker;
// import 'package:flutter/painting.dart';
import 'package:nepali_date_picker/nepali_date_picker.dart';
import 'package:nepali_utils/nepali_utils.dart';
import 'package:velocity_x/velocity_x.dart';

/// Calendar Picker Example
class CalendarMSCWidget extends StatelessWidget {
  CalendarMSCWidget({Key? key}) : super(key: key);

  final ValueNotifier<NepaliDateTime> _selectedDate =
      ValueNotifier(NepaliDateTime.now());

  /// Events
  final List<Event> events = [
    Event(
        date: NepaliDateTime.parse("2079-01-01"),
        eventTitles: ['Start semester break (II/I)']),
    Event(
        date: NepaliDateTime.parse("2079-01-15"),
        eventTitles: ['End semester break (II/I)']),
    Event(
        date: NepaliDateTime.parse("2079-01-16"),
        eventTitles: ['Start Regular Class (II/II)']),
    Event(
        date: NepaliDateTime.parse("2079-01-20"),
        eventTitles: ['Class End (I/I)']),
    Event(
        date: NepaliDateTime.parse("2079-01-23"),
        eventTitles: ['Start Exam (I/I)']),
    Event(
        date: NepaliDateTime.parse("2079-02-07"),
        eventTitles: ['End Exam (I/I)']),
    Event(
        date: NepaliDateTime.parse("2079-02-10"),
        eventTitles: ['Start Regular Class (I/II)']),
    Event(
        date: NepaliDateTime.parse("2079-04-30"),
        eventTitles: ['End of Regular Class (I/II & II/II)']),
    Event(
        date: NepaliDateTime.parse("2079-05-10"),
        eventTitles: ['Start Exam (I/II & II/II)']),
    Event(
        date: NepaliDateTime.parse("2079-06-09"),
        eventTitles: ['End Exam (I/II & II/II)']),
    Event(
        date: NepaliDateTime.parse("2079-06-10"),
        eventTitles: ['Start Dashain vacation']),
    Event(
        date: NepaliDateTime.parse("2079-07-15"),
        eventTitles: ['End Dashain & Tihar Vacation']),
    Event(
        date: NepaliDateTime.parse("2078-08-01"),
        eventTitles: ['Start Regular class (II/I)']),
    Event(
        date: NepaliDateTime.parse("2078-08-26"),
        eventTitles: ['Start M.Sc Entrance']),
    Event(
        date: NepaliDateTime.parse("2078-08-27"),
        eventTitles: ['End M.Sc Entrance']),
    Event(
        date: NepaliDateTime.parse("2078-10-26"),
        eventTitles: ['Start Class (I/I)']),
    Event(
        date: NepaliDateTime.parse("2078-11-01"),
        eventTitles: ['Start Thesis Defence (Chance)']),
    Event(
        date: NepaliDateTime.parse("2078-11-30"),
        eventTitles: ['End Thesis Defence (Chance)']),
    Event(
        date: NepaliDateTime.parse("2078-12-01"),
        eventTitles: ['Start of Regular Exam (II/I)']),
    Event(
        date: NepaliDateTime.parse("2078-12-30"),
        eventTitles: ['End of Regular Exam (II/I)']),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CalendarDatePicker(
          initialDate: NepaliDateTime.now(),
          firstDate: NepaliDateTime(2070),
          lastDate: NepaliDateTime(2090),
          onDateChanged: (date) => _selectedDate.value = date,
          dayBuilder: (dayToBuild) {
            return Stack(
              children: <Widget>[
                Center(
                  child: Text(
                    NepaliUtils().language == Language.english
                        ? '${dayToBuild.day}'
                        : NepaliUnicode.convert('${dayToBuild.day}'),
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                if (events.any((event) => _dayEquals(event.date, dayToBuild)))
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 6,
                      height: 6,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.purple),
                    ),
                  )
              ],
            );
          },
          selectedDayDecoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purple, Colors.deepPurpleAccent]),
            // color: Colors.purple,
            shape: BoxShape.circle,
          ),
          todayDecoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue, Colors.cyan]),
            shape: BoxShape.circle,
          ),
        ),
        Expanded(
          child: ValueListenableBuilder<NepaliDateTime>(
            valueListenable: _selectedDate,
            builder: (context, date, _) {
              Event? event;
              try {
                event = events.firstWhere((e) => _dayEquals(e.date, date));
              } on StateError {
                event = null;
              }

              if (event == null) {
                return const Center(
                  child: Text('No Events'),
                );
              }
              return ListView.separated(
                itemCount: event.eventTitles.length,
                itemBuilder: (context, index) => ListTile(
                  leading: TodayWidget(
                    today: date,
                  ),
                  title: Text(event!.eventTitles[index]),
                  onTap: () {},
                ),
                separatorBuilder: (context, _) => const Divider(),
              );
            },
          ),
        ),
      ],
    );
  }

  bool _dayEquals(NepaliDateTime? a, NepaliDateTime? b) =>
      a != null &&
      b != null &&
      a.toIso8601String().substring(0, 10) ==
          b.toIso8601String().substring(0, 10);
}

///
class TodayWidget extends StatelessWidget {
  ///
  final NepaliDateTime today;

  ///
  const TodayWidget({
    Key? key,
    required this.today,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        width: 60,
        height: 60,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                // backgroundBlendMode: BlendMode.color,
                // color: Theme.of(context).cardColor,
                color: context.accentColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: Text(
                  NepaliDateFormat.EEEE()
                      .format(today)
                      .substring(0, 3)
                      .toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const Spacer(),
            Text(
              NepaliDateFormat.d().format(today),
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

///
class Event {
  ///
  final NepaliDateTime date;

  ///
  final List<String> eventTitles;

  ///
  Event({required this.date, required this.eventTitles});
}
