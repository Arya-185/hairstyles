import 'package:flutter/cupertino.dart';
import 'package:hairstyles/services/fetch_data_service';


class FetchDataController extends ChangeNotifier {
  var _data;

  get data => _data;

  bool _isLoading = true;

  bool get isLoading => _isLoading;

  Future fetchData() async {
    // notifyListeners();
    _data = await FetchDataService.fetchData();
    // _isLoading = true;
    // print(_isLoading);
    _isLoading = false;
    notifyListeners();
  }
}