import 'package:flutter/material.dart';

class SelectProjectPage extends StatefulWidget {
  const SelectProjectPage({Key? key}) : super(key: key);

  @override
  State<SelectProjectPage> createState() => _SelectProjectPageState();
}

class _SelectProjectPageState extends State<SelectProjectPage> {
  final List<ProjectItem> projects = [
    const ProjectItem(id: '10', name: 'Tiger Credential'),
    const ProjectItem(id: '10', name: 'Tiger Credential'),
    const ProjectItem(id: '10', name: 'Tiger Credential'),
    const ProjectItem(id: '10', name: 'Tiger Credential'),
    const ProjectItem(id: '10', name: 'Tiger Credential'),
    const ProjectItem(id: '10', name: 'Tiger Credential'),
    const ProjectItem(id: '093', name: 'Innovation Sampling'),
    const ProjectItem(id: '093', name: 'Innovation Sampling'),
    const ProjectItem(id: '093', name: 'Innovation Sampling'),
    const ProjectItem(id: '093', name: 'Innovation Sampling'),
    const ProjectItem(id: '093', name: 'Innovation Sampling'),
    const ProjectItem(id: '093', name: 'Innovation Sampling'),
    const ProjectItem(id: '093', name: 'Innovation Sampling'),
    const ProjectItem(id: '093', name: 'Innovation Sampling'),
    const ProjectItem(id: '093', name: 'Innovation Sampling'),
    const ProjectItem(id: '093', name: 'Innovation Sampling'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chọn dự án',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            tooltip: 'Cài đặt',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          const SizedBox(width: 12),
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
                    color: Color.fromRGBO(242, 242, 242, 1.0),
                    width: 2.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(165, 164, 164, 1.0),
                    width: 2.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(242, 242, 242, 1.0),
                    width: 2.0,
                  ),
                ),
                filled: true,
                fillColor: Color.fromRGBO(163, 163, 163, 0.09),
                suffixIcon: Icon(
                  Icons.search_outlined,
                  color: Colors.black,
                  size: 22,
                ),
                hintText: 'Nhập ID, tên dự án',
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return projects[index];
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemCount: projects.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectItem extends StatefulWidget {
  final String id;
  final String name;

  const ProjectItem({
    Key? key,
    required this.id,
    required this.name,
  }) : super(key: key);

  @override
  State<ProjectItem> createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Row(
          children: [
            Image.asset('/images/icon/icon_folder.png'),
            const SizedBox(width: 20),
            Text(
              '${widget.id} - ${widget.name}',
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
            const Divider(
              height: 1,
              color: Colors.red,
            ),
          ],
        ),
      ),
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('${widget.id} ${widget.name}')));
      },
    );
  }
}
