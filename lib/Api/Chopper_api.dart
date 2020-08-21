import 'package:chopper/chopper.dart';

part 'Chopper_api.chopper.dart';

//1
@ChopperApi()
abstract class ApiService extends ChopperService {
//2

  /// Get all the category
  @Get(path: '/list')
  Future<Response> getCategories();

  /// Get single Cat By Id
  // @Get(path: '/panel/category/{id}')
  // Future<Response> getSingleCategoryById(@Path('id') int id);

 

//3
  static ApiService create() {
    final client = ChopperClient(
        baseUrl: 'http://192.168.2.100:3031',
        services: [
          _$ApiService(),
        ],
        converter: JsonConverter());
    return _$ApiService(client);
  }
}
