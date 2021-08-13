import 'dart:convert';

import 'package:covid_app_sample/failures/failures.dart';
import 'package:covid_app_sample/model/covid_data_model.dart';
import 'package:covid_app_sample/repositories/covid_data_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class CovidDatarepositoryImpl implements CovidDataRepository {
  @override
  Future<Either<Failure, CovidDataModel>> getCovidData() async {
    try {
      final response = await http.get(
        Uri.parse('https://corona.askbhunte.com/api/v1/data/nepal'),
      );
      final result = CovidDataModel.fromJson(json.decode(response.body));
      return Right(result);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
