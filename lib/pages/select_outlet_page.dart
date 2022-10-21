import 'package:flutter/material.dart';

class SelectOutletPage extends StatefulWidget {
  const SelectOutletPage({Key? key}) : super(key: key);

  @override
  State<SelectOutletPage> createState() => _SelectOutletPageState();
}

class _SelectOutletPageState extends State<SelectOutletPage> {
  final String title = '4 - Innovation Sampling';
  final int totalOutlet = 8;
  final List<Outlet> outlets = [
    const Outlet(
      name: 'VINMART Võ Văn Tần',
      address: '99 Võ Thị Sáu, Thanh Nhàn, Hai Bà Trưng...',
      status: OutletStatus.todo,
    ),
    const Outlet(
      name: 'VINMART Võ Văn Tần',
      address: '99 Võ Thị Sáu, Thanh Nhàn, Hai Bà Trưng...',
      status: OutletStatus.doing,
    ),
    const Outlet(
      name: 'VINMART Võ Văn Tần',
      address: '99 Võ Thị Sáu, Thanh Nhàn, Hai Bà Trưng...',
      status: OutletStatus.done,
    ),
  ];

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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Cửa hàng',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: 'Thông báo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Cá nhân',
          ),
        ],
        iconSize: 30.0,
        selectedItemColor: Colors.black54,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Column(
          children: [
            const TextField(
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
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$totalOutlet Cửa hàng',
                  style: const TextStyle(
                    fontSize: 18.0,
                    color: Color.fromRGBO(21, 155, 42, 1.0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const ImageIcon(
                      AssetImage('images/icon/icon_filter.png')),
                  iconSize: 24.0,
                ),
              ],
            ),
            const Divider(
              thickness: 1.0,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (BuildContext context, index) {
                  return outlets[index];
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemCount: outlets.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Outlet extends StatefulWidget {
  final String name;
  final String address;
  final OutletStatus status;

  const Outlet({
    Key? key,
    required this.name,
    required this.address,
    required this.status,
  }) : super(key: key);

  @override
  State<Outlet> createState() => _OutletState();
}

class _OutletState extends State<Outlet> {
  _getStatusText() {
    if (widget.status == OutletStatus.todo) {
      return Container(
        alignment: Alignment.center,
        width: 86.0,
        height: 24.0,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(234, 234, 234, 1.0),
          borderRadius: BorderRadius.all(
            Radius.circular(3.0),
          ),
        ),
        child: const Text(
          'Chưa làm',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      );
    } else if (widget.status == OutletStatus.doing) {
      return Container(
        alignment: Alignment.center,
        width: 86.0,
        height: 24.0,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 196, 0, 1.0),
          borderRadius: BorderRadius.all(
            Radius.circular(3.0),
          ),
        ),
        child: const Text(
          'Đang làm',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      );
    }
    return Container(
      alignment: Alignment.center,
      width: 86.0,
      height: 24.0,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(21, 155, 42, 1.0),
        borderRadius: BorderRadius.all(
          Radius.circular(3.0),
        ),
      ),
      child: const Text(
        'Hoàn thành',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _getStatusText(),
            const SizedBox(height: 10),
            Text(
              widget.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              widget.address,
              style: const TextStyle(
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
      onTap: () {},
    );
  }
}

enum OutletStatus { todo, doing, done }
