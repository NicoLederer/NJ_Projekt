import 'package:flutter/material.dart';
import 'package:project/mainpage.dart';

class DatePicker extends StatefulWidget{
  const DatePicker({Key? key}) : super(key: key);

  @override
  _DatePickerState createState() => _DatePickerState();

}

class _DatePickerState extends State<DatePicker> {

  DateTime _dateTime = DateTime.now();

  void _showDatePicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2023)
    ).then((value) {
      setState(() {
        _dateTime = value!;
        names.insert(0,_dateTime.day.toString()+"."+ _dateTime.month.toString()+"."+_dateTime.year.toString());
      });
    });
  }

  DateTime get dateTime => _dateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(_dateTime.day.toString()+ "."+ _dateTime.month.toString()+ "."+ _dateTime.year.toString(), style: TextStyle(fontSize: 20),),

                MaterialButton(
                  onPressed: _showDatePicker,
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('Datum wählen',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        )),
                  ),
                  color: Color(0xff134291),
                ),
              ],
            )
        )
    );
  }
}


