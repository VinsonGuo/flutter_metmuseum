import 'package:dio/dio.dart';
import 'package:flutter_metmuseum/model/models.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
part 'RestClient.g.dart';

@RestApi(baseUrl: 'https://collectionapi.metmuseum.org/')
abstract class RestClient {
  static final Dio _defaultDio = Dio()..interceptors.add(PrettyDioLogger());
  static final instance = RestClient();

  factory RestClient() => _RestClient(_defaultDio);

  @GET('public/collection/v1/objects')
  Future<MuseumObjects> getMuseumObjects();

  @GET('public/collection/v1/objects/{id}')
  Future<MuseumObjectDetail> getMuseumObjectDetail(@Path('id') String id);
}