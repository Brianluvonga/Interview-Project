import 'package:flutter/material.dart';
import 'package:interview_project/connection/get_api_data.dart';
import 'package:interview_project/model/api_model.dart';

class ResponsePage extends StatefulWidget {
  const ResponsePage({Key? key}) : super(key: key);

  @override
  _ResponsePageState createState() => _ResponsePageState();
}

class _ResponsePageState extends State<ResponsePage> {
  Widget _infoCard() {
    return Card(
      elevation: 8.0,
      shadowColor: Colors.black,
      child: Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }

  Future<List<Info>>? infoData;

  @override
  void initState() {
    super.initState();
    infoData = getAPIData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Response'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder<List<Info>>(
          future: infoData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Info>? data = snapshot.data;
              return ListView.separated(
                  itemCount: data!.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider(
                      color: Colors.black,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      // height: 75,
                      color: Colors.white,
                      child: ListTile(
                        title: Text('${data[index].title}'),
                        subtitle: Text('${data[index].completed}'),
                        leading: Text('${data[index].id}'),
                        trailing: Text('${data[index].userId}'),
                      ),
                    );
                  });
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
