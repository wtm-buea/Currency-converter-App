 
import 'package:http/http.dart' as http;
import 'dart:convert';

//List<String> randomDuotes;
var data;
class CurrencyList {

  Future getData() async{
String url = "https://free.currconv.com/api/v7/currencies?apiKey=47f6ea18396863fa2c06";

      http.Response response = await http.get(
          Uri.parse(url));

      if (response.statusCode == 200) {

        var decodedData = jsonDecode(response.body);
        print(decodedData);
      } else {
        print(response.statusCode);
        throw 'Problem with the get request';
      }

  }
}
