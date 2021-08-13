import 'package:covid_app_sample/model/covid_data_model.dart';
import 'package:covid_app_sample/repositories/covid_data_reporitory_impl.dart';
import 'package:covid_app_sample/repositories/covid_data_repository.dart';
import 'package:covid_app_sample/use_cases/get_covid_data.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'get_covid_data_test.mocks.dart';

@GenerateMocks([CovidDataRepository])
void main() {
  late GetCovidData usecase;

  late MockCovidDataRepository mockGetCovidDataRepository;
  setUp(() {
    mockGetCovidDataRepository = MockCovidDataRepository();

    usecase = GetCovidData(mockGetCovidDataRepository);
  });

  final testData = CovidDataModel(
    deaths: 3012,
    in_isolation: 870,
    latest_sit_report: Latest_sit_report(
      createdAt: "2020-10-20T11:15:05.888Z",
      date: "2020-10-19",
      iV: 0,
      no: 253,
      sId: "5f8ec6b9b086da747e3e7ce9",
      type: "MOHP",
      updated_at: "2020-10-20T11:15:05.888Z",
      url:
          "https://drive.google.com/file/d/1jt0EU0mrmfHK9k5gzgKxgD5VdMpXAVRO/view",
    ),
    pending_result: 0,
    updated_at: "2021-03-09T00:00:00.000Z",
    quarantined: 56,
    recovered: 270987,
    source:
        "https://drive.google.com/file/d/1jt0EU0mrmfHK9k5gzgKxgD5VdMpXAVRO/view",
    tested_negative: 1925081,
    tested_positive: 274869,
    tested_rdt: 312402,
    tested_total: 2199950,
  );

  test(
    'Should get the latest covid data from repository',
    () async {
      //arrange
      when(mockGetCovidDataRepository.getCovidData())
          .thenAnswer((_) async => Right(testData));

      //act
      final result = await usecase.getCovidData();

      //assert
      expect(result, Right(testData));
      verify(mockGetCovidDataRepository.getCovidData());
      verifyNoMoreInteractions(mockGetCovidDataRepository);
    },
  );
}
