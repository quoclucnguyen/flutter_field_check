import 'package:flutter/material.dart';

class SelectOutletPage extends StatefulWidget {
  const SelectOutletPage({Key? key}) : super(key: key);

  @override
  State<SelectOutletPage> createState() => _SelectOutletPageState();
}

class _SelectOutletPageState extends State<SelectOutletPage> {
  final String title = '4 - Innovation Sampling';
  final int totalOutlet = 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Dự án khác',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(21, 155, 42, 1.0),
                    width: 2.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(21, 155, 42, 1.0),
                    width: 2.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(21, 155, 42, 1.0),
                    width: 2.0,
                  ),
                ),
                filled: true,
                fillColor: Color.fromRGBO(21, 155, 42, 0.09),
                suffixIcon: Icon(
                  Icons.search_outlined,
                  color: Colors.black,
                  size: 22,
                ),
                hintText: 'Tên, địa chỉ outlet cần tìm',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            child: Row(
              children: [
                Text('$totalOutlet Cửa hàng'),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
