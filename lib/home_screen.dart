import 'package:complex_api_parse/model/response_model.dart';
import 'package:complex_api_parse/services/api_services.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<List<ResponseModel>?>? _data;

  @override
  void initState() {
    super.initState();
    _data = ApiServices().fetchData();
  }

  Future<void> _refreshData() async {
    setState(() {
      _data = ApiServices().fetchData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
        ),
        body: RefreshIndicator(
          onRefresh: _refreshData,
          child: FutureBuilder<List<ResponseModel>?>(
            future: ApiServices().fetchData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                    child:
                        CircularProgressIndicator()); // Display a loading indicator while waiting for data
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else if (snapshot.data != null) {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    final data = snapshot.data![index];
                    return Card(
                      child: Column(
                        children: [
                          Image.network(data.url),
                          Text('Name: ${data.breeds[0].name}'),
                          Text('Place: ${data.breeds[0].origin}')
                        ],
                      ),
                    );
                  },
                );
              } else {
                return Text(
                    'No data available'); // Handle case where data is null
              }
            },
          ),
        ));
  }
}
