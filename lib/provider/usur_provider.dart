import 'package:flutter/cupertino.dart';
import 'package:get_api_calling_using_flutter_provider/Model/usur_model.dart';
import 'package:get_api_calling_using_flutter_provider/data_utils/data_utils.dart';

class UsurProvider extends ChangeNotifier{

  late List<UsurModel> _userList = [];
  List<UsurModel> get allUserList => _userList;

  void fetchPost() async{

    try{
   
    DataUtils dataUtils = DataUtils();
    _userList = await dataUtils.getData();

    }catch(e){

   notifyListeners();

    }

    
  }
}