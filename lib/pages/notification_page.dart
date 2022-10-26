import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toggle_switch/toggle_switch.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thông báo'),
        centerTitle: true,
        titleTextStyle: const TextStyle(fontSize: 18.0),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              ToggleSwitch(
                initialLabelIndex: 0,
                totalSwitches: 2,
                labels: const ['Tin mới', 'Đã xem'],
                activeBgColor: const [Color.fromRGBO(226, 246, 227, 1.0)],
                inactiveBgColor: Colors.white,
                customWidths: [
                  MediaQuery.of(context).size.width / 2 - 15,
                  MediaQuery.of(context).size.width / 2 - 15
                ],
                fontSize: 16.0,
                borderColor: const [Colors.white],
                borderWidth: 3.0,
                onToggle: (index) {},
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  fillColor: Color.fromRGBO(245, 245, 245, 1.0),
                  hintText: 'Tìm kiếm',
                  prefixIcon: Icon(Icons.search_outlined, color: Colors.black),
                  prefixIconColor: Colors.black,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => const NotificationByDay(),
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: 1,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationByDay extends StatefulWidget {
  const NotificationByDay({Key? key}) : super(key: key);

  @override
  State<NotificationByDay> createState() => _NotificationByDayState();
}

class _NotificationByDayState extends State<NotificationByDay> {
  final String _dateInString = '20/09/2022';
  final List<Notification> _notifications = [
    const Notification(time: '20:09', message: 'Message', title: 'Title'),
    const Notification(time: '20:09', message: 'Message', title: 'Title'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _dateInString,
          style: const TextStyle(
            fontSize: 16.0,
          ),
        ),
        const SizedBox(height: 10),
        ..._notifications,
      ],
    );
  }
}

class Notification extends StatefulWidget {
  final String time;
  final String title;
  final String message;

  const Notification({
    Key? key,
    required this.time,
    required this.title,
    required this.message,
  }) : super(key: key);

  @override
  State<Notification> createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          decoration: BoxDecoration(
            border: const Border.fromBorderSide(
                BorderSide(width: 1, color: Colors.white)),
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              )
            ],
          ),
          child: Row(
            children: [
              const Icon(
                Icons.error_outline,
                color: Colors.red,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.time,
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Color.fromRGBO(172, 172, 172, 1.0),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.title,
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.message,
                    style: const TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
