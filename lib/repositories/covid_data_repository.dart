import 'package:covid_app_sample/failures/failures.dart';
import 'package:covid_app_sample/model/covid_data_model.dart';
import 'package:dartz/dartz.dart';

abstract class CovidDataRepository {
  Future<Either<Failure, CovidDataModel>> getCovidData();
}
