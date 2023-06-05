import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime currentDate = DateTime.now();
  String? selectedDateForBackendDeveloper;
  datePicker(context) async {
    DateTime? userSelectedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2001),
        lastDate: DateTime(2023, 9, 20));
    if (userSelectedDate == null) {
      return;
    } else {
      setState(() {
        currentDate = userSelectedDate;
        selectedDateForBackendDeveloper =
            "${currentDate.year}/${currentDate.month}/${currentDate.day}";
        print("Date $selectedDateForBackendDeveloper");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "DOB:${currentDate.year}/${currentDate.month}/${currentDate.day}",
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          width: 40,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
            onPressed: () {
              datePicker(context);
            },
            child: const Text('select'))
      ],
    );
  }
}
