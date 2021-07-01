import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:untitled/model/response_model.dart';

class Request {
  static Future<ResponseModel> getMapData(int start, int limit) async {
    String uri =
        "https://pro-api.coinmarketcap.com/v1/cryptocurrency/map?start=$start&limit=$limit";
    print('url ' + uri);
    var url = Uri.parse(uri);
    Map<String, String> headers = {
      'X-CMC_PRO_API_KEY': '2592e201-7cb0-41b4-81d5-abacc60ac4ee',
    };
    var response = await http.get(
      url,
      headers: headers,
    );
    ResponseModel _responseModel =
        ResponseModel.fromJson(json.decode(response.body));
    return _responseModel;
  }
}
