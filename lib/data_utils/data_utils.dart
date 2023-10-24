import 'dart:convert';

import 'package:get_api_calling_using_flutter_provider/Model/usur_model.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
class DataUtils{

 Future<List<UsurModel>> getData()async{
  List<UsurModel> usurData=[];

  try{
  var request = http.Request('GET',Uri.parse('https://jsonplaceholder.typicode.com/users'));
  http.StreamedResponse response = await request.send();

  if(response.statusCode ==200){
    var rawData = await response.stream.bytesToString();
    List<dynamic> data =jsonDecode(rawData);
    data.forEach((element) {
      UsurModel usurModel =UsurModel.fromJson(element);
      usurData.add(usurModel);
    });
    return usurData;
  }
  else {
    return [];
  }
  }
  catch(e){
   throw e;

  }
 }

}