import 'dart:convert';

import 'package:covid_app_sample/model/covid_data_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<CovidDataModel> fetchData() async {
    final response = await http.get(
      Uri.parse('https://corona.askbhunte.com/api/v1/data/nepal'),
    );
    final result = CovidDataModel.fromJson(json.decode(response.body));
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COVID DATA NEPAL"),
      ),
      body: FutureBuilder<CovidDataModel>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data!;
            return Center(
              child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).backgroundColor,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Total Deaths: ${data.deaths}"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Total in isolation: ${data.in_isolation}"),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Latest sit report: ${data.latest_sit_report}",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Source: ${data.source}",
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          decoration: TextDecoration.underline,
                          color: Colors.blueAccent),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            );
          }
          return Center(child: Text("No data"));
        },
      ),
    );
  }
}
