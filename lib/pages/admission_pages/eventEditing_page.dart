import 'package:flutter/material.dart';
import 'package:ioe_app/pages/admission_pages/calendar_event.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:ioe_app/utils/utils.dart';
import 'package:ioe_app/pages/admission_pages/eventProvider.dart';

class EventEditingPage extends StatefulWidget {
  const EventEditingPage({Key? key}) : super(key: key);

  get event => null;

  @override
  _EventEditingPageState createState() => _EventEditingPageState();
}

class _EventEditingPageState extends State<EventEditingPage> {
  final _formkey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  late DateTime fromDate;
  late DateTime toDate;

  @override
  void initState() {
    super.initState();

    if (widget.event == null) {
      fromDate = DateTime.now();
      toDate = DateTime.now().add(Duration(hours: 2));
    }
  }

  @override
  void dispose() {
    titleController.dispose();
    super.dispose();
  }

// for title
  Widget buildTitle() => TextFormField(
        style: const TextStyle(fontSize: 24),
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          hintText: 'Add Title',
        ),
        onFieldSubmitted: (_) => saveForm(),
        controller: titleController,
        validator: (title) =>
            title != null && title.isEmpty ? 'Title cannont be empty' : null,
      );

  Widget buildDescription() => TextFormField(
        style: const TextStyle(fontSize: 24),
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          hintText: 'Description',
          hintMaxLines: 2,
        ),
        onFieldSubmitted: (_) => saveForm(),
        controller: descriptionController,
        // validator: (title) =>
        //     title != null && title.isEmpty ? 'Title cannont be empty' : null,
      );

// for picking date i.e from and to date
  Widget buildDateTimePicker() => Column(
        children: [
          buildFrom(),
          buildTo(),
        ],
      );

// for from date
  Widget buildFrom() => buildHeader(
        header: 'FROM',
        child: Row(children: [
          Expanded(
            flex: 2,
            child: buildDropDownField(
              text: Utils.toDate(fromDate),
              onClicked: () => pickFromDateTime(pickDate: true),
            ),
          ),
          Expanded(
            child: buildDropDownField(
              text: Utils.toTime(fromDate),
              onClicked: () => pickFromDateTime(pickDate: false),
            ),
          )
        ]),
      );

// from to date
  Widget buildTo() => buildHeader(
        header: 'TO',
        child: Row(children: [
          Expanded(
            flex: 2,
            child: buildDropDownField(
              text: Utils.toDate(toDate),
              onClicked: () => pickToDateTime(pickDate: true),
            ),
          ),
          Expanded(
            child: buildDropDownField(
              text: Utils.toTime(toDate),
              onClicked: () => pickToDateTime(pickDate: false),
            ),
          )
        ]),
      );

// for drop down on fromDate e to be clickable
  Future pickFromDateTime({required bool pickDate}) async {
    final date = await pickDateTime(
      fromDate,
      pickDate: pickDate,
    );
    if (date == null) return;
    if (date.isAfter(toDate)) {
      toDate = DateTime(
        date.year,
        date.month,
        date.day,
        toDate.hour,
        toDate.minute,
      );
    }

    setState(() => fromDate = date);
  }

// for drop down on toDate e to be clickable

  Future pickToDateTime({required bool pickDate}) async {
    final date = await pickDateTime(
      toDate,
      pickDate: pickDate,
      firstDate: pickDate ? fromDate : null,
    );
    if (date == null) return;

    setState(() => toDate = date);
  }

  Future<DateTime?> pickDateTime(
    DateTime initialDate, {
    required bool pickDate,
    DateTime? firstDate,
  }) async {
    if (pickDate) {
      final date = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: firstDate ?? DateTime(2015, 8),
        lastDate: DateTime(2101),
      );
      if (date == null) return null;
      final time = Duration(
        hours: initialDate.hour,
        minutes: initialDate.minute,
      );
      return date.add(time);
    } else {
      final timeOfDay = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(initialDate),
      );

      if (timeOfDay == null) return null;
      final date = DateTime(
        initialDate.year,
        initialDate.month,
        initialDate.day,
      );
      final time = Duration(
        hours: timeOfDay.hour,
        minutes: timeOfDay.minute,
      );
      return date.add(time);
    }
  }

// widget to wrap build fromDate and toDate just to pass the header i.e FROM and TO
  Widget buildDropDownField({
    required String text,
    required VoidCallback onClicked,
  }) =>
      ListTile(
        title: Text(text),
        trailing: Icon(Icons.arrow_drop_down),
        onTap: onClicked,
      );

  Widget buildHeader({
    required String header,
    required Widget child,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(header, style: TextStyle(fontWeight: FontWeight.bold)),
          child,
        ],
      );

  Future saveForm() async {
    final isValid = _formkey.currentState!.validate();
    if (isValid) {
      final event = Event(
        title: titleController.text,
        from: fromDate,
        to: toDate,
        description: descriptionController.text,
        isAllDay: false,
      );
      final provider = Provider.of<EventProvider>(context, listen: false);
      provider.addEvent(event);

      Navigator.of(context).pop();
    }
  }

  List<Widget> builEditingActions() => [
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          onPressed: saveForm,
          icon: const Icon(Icons.done),
          label: const Text('save'),
        )
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.accentColor,
        leading: const CloseButton(),
        actions: builEditingActions(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              buildTitle(),
              const SizedBox(height: 20),
              buildDateTimePicker(),
              buildDescription(),
            ],
          ),
        ),
      ),
    );
  }
}
