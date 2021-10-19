import 'package:flutter/material.dart';
import 'package:interview_project/connection/get_api_data.dart';
import 'package:interview_project/model/api_model.dart';

class ResponsePage extends StatefulWidget {
  const ResponsePage({Key? key}) : super(key: key);

  @override
  _ResponsePageState createState() => _ResponsePageState();
}

class _ResponsePageState extends State<ResponsePage> {
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
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: SizedBox(
          // width: 300,
          child: FutureBuilder<List<Info>>(
            future: infoData,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Info>? data = snapshot.data;
                return ListView.separated(
                  itemCount: data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 90,
                      // color: Colors.white,
                      child: ListTile(
                        // shape: RoundedRectangleBorder(
                        //   side: const BorderSide(color: Colors.red, width: 0.5),
                        //   borderRadius: BorderRadius.circular(15.0),
                        // ),
                        title: Text('${data[index].title}'),
                        subtitle: Text('${data[index].completed}'),
                        leading: Text('${data[index].id}'),
                        trailing: Text('${data[index].userId}'),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider();
                  },
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return const CircularProgressIndicator(color: Colors.greenAccent);
            },
          ),
        ),
      ),
    );
  }
}
