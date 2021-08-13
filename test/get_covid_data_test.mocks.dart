// Mocks generated by Mockito 5.0.10 from annotations
// in covid_app_sample/test/get_covid_data_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:covid_app_sample/failures/failures.dart' as _i5;
import 'package:covid_app_sample/model/covid_data_model.dart' as _i6;
import 'package:covid_app_sample/repositories/covid_data_repository.dart'
    as _i3;
import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeEither<L, R> extends _i1.Fake implements _i2.Either<L, R> {
  @override
  String toString() => super.toString();
}

/// A class which mocks [CovidDataRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockCovidDataRepository extends _i1.Mock
    implements _i3.CovidDataRepository {
  MockCovidDataRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.CovidDataModel>> getCovidData() =>
      (super.noSuchMethod(Invocation.method(#getCovidData, []),
              returnValue:
                  Future<_i2.Either<_i5.Failure, _i6.CovidDataModel>>.value(
                      _FakeEither<_i5.Failure, _i6.CovidDataModel>()))
          as _i4.Future<_i2.Either<_i5.Failure, _i6.CovidDataModel>>);
}
