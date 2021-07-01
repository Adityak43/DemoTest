import 'package:untitled/model/response_model.dart';
import 'package:untitled/network/request.dart';

abstract class NetworkAPI {
  Future<ResponseModel> getMap(int start, int limit);
}

class DefaultNetworkAPI extends NetworkAPI {
  @override
  Future<ResponseModel> getMap(int start, int limit) {
    return Request.getMapData(start, limit);
  }
}
