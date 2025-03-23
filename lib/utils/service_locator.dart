import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hanka4a/utils/api_service.dart';
import 'package:hanka4a/utils/dio_consumer.dart';

final getIt = GetIt.instance;

void setupGetit() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<ApiService>(DioConsumer(dio: getIt<Dio>()));
}
