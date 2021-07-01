import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:untitled/model/response_model.dart';
import 'package:untitled/network/network_api.dart';

class CoinListBloc extends Bloc {
  NetworkAPI _networkAPI;
  int _start = 1;
  int _limit = 20;
  BehaviorSubject<List<DataModel>> responseModelBehaviorSubject =
      BehaviorSubject();

  CoinListBloc(this._networkAPI) : super(0);

  Future<ResponseModel> getMapData(bool isPullToRefresh) {
    if (isPullToRefresh) {
      _start = 1;
    }
    return _networkAPI.getMap(_start, _limit).then((value) {
      _start = _start + _limit;
      print('Value ' + value.toString());
      print('Value Length ' + value.data.length.toString());
      responseModelBehaviorSubject.add(value.data);
      return value;
    });
  }

  @override
  Stream mapEventToState(event) {
    return Stream.value(null);
  }
}
