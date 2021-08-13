import 'package:covid_app_sample/failures/failures.dart';
import 'package:covid_app_sample/model/covid_data_model.dart';
import 'package:covid_app_sample/repositories/covid_data_repository.dart';
import 'package:dartz/dartz.dart';

class GetCovidData {
  final CovidDataRepository repository;
  GetCovidData(this.repository);
  Future<Either<Failure, CovidDataModel>> getCovidData() async {
    return await repository.getCovidData();
  }
}
