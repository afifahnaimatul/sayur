import 'dart:convert' as convert;
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:sayur/model/food_class.dart';
import 'package:sayur/model/sayur.dart';

class Services {
  static Future<FoodClass> getSayur() async {
    Dio dio = Dio();
    // try {
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
      var customHeaders = {
        'x-rapidapi-host': 'food-nutrition-information.p.rapidapi.com',
        'x-rapidapi-key': 'ab79e0d9admsh0ca2eff724bb2e7p19f07fjsnf8f490b9021c'
      };
      options.headers.addAll(customHeaders);
      return options;
    }));

    print('hello');

    var something = await dio.get(
        'https://food-nutrition-information.p.rapidapi.com/foods/search?query=cheese');
    Map data = something.data;
    FoodClass food = FoodClass.fromJson(data);
    print('final');
    log(data.toString());
    return food;
    // } catch (e) {
    //   print(e);
    //   return null;
    // }
  }

  static Future getSayur2() async {
    Dio dio = Dio();

    print('ini di sayur 2');
    try {
      dio.interceptors
          .add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
        var customHeaders = {
          'authorization':
              'eyJzYWZlRW1haWwiOnsic2FmZUVtYWlsMSI6IlwvTnRNR0lQMXpRZEljcERnM09uQ05RPT0iLCJzYWZlRW1haWwyIjoiakd1QVY0Uk9rMHU3c0s3SU8rT2pHZz09Iiwic2FmZUVtYWlsMyI6ImRZcU5hZzJKYmwzUXRSSDFxdHUrdlE9PSIsInNhZmVFbWFpbDQiOiJCblUrVGFHeHhHV0tuaHpMTmdIcjdBPT0ifSwiY2xpZW50IjoiMjEwNDI4MDMxNzExIiwibV9wZXJ1c2FoYWFuIjp7ImlkIjo1LCJuYW1hIjoiUFQuIFJ1dmkgUml6cXkgQmVya2FoIn0sInVzZXJJZCI6MSwibmlrIjoiMDEwNC4yMDIxMDgxIiwic3RhdHVzVHh0IjoiS29udHJhayIsImphYmF0YW5UeHQiOiJIUiBTdGFmZiIsImJhaGFzYSI6IklORCIsIm1lbml0UGFzc3dvcmQiOjAsInVpZCI6IlRzSVFnVGVSdzFkVEtybkdEd1N6NndyYzFLYjIiLCJuYW1hIjoiWWFudWFyIExpbmdnYSBCaHVvbm8iLCJlbWFpbCI6InlhbnVhci5iaHVvbm9AZ21haWwuY29tIiwidGlwZSI6Imthcnlhd2FuIiwiZm90byI6Imh0dHBzOlwvXC9hcGkuaHVtYW5pcy5pZFwvYXNzZXRzXC9pbWdcL2thcnlhd2FuXC9mb3RvXzIxMDQyODAzMTcxMVwvNjExMzk1MzgxYTA5Mi5qcGciLCJmb3RvX3Byb2ZpbCI6Imh0dHBzOlwvXC9hcGkuaHVtYW5pcy5pZFwvYXNzZXRzXC9pbWdcL2thcnlhd2FuXC9mb3RvXzIxMDQyODAzMTcxMVwvNjExMzk1MzgxYTA5Mi5qcGciLCJpZCI6MSwia2FyeWF3YW5fcGVydXNhaGFhbiI6Ilt7XCJpZFwiOjF9LHtcImlkXCI6Nn1dIiwicmVnaXN0cmF0aW9uVG9rZW4iOiJlWmMxeVZSSVFGMmgxa21TcUY3WEtkOkFQQTkxYkVUQWk0SWd0QmkxOW1HMl9aTkNqV0gyRkt2TncwUzl0dVd5NU54MGhyNGRRTUpwZEpkR2xiQnpLYWVyZHkyTmNQdU1iSEZpdEkxT0NNN0lFeEpPZUxQaW9fU0dub0R4Ny1ra2NRa2FIcjI2Q3Q2QnV3ZnhzdkxqNFV2VDRfVzhRaExvbHhBIiwia2FyeWF3YW5fZGF0YV9pZCI6MSwiaXNfdHV0b3JpYWwiOjF9'
        };
        options.headers.addAll(customHeaders);
        return options;
      }));

      print('ini di dalam sayur 2');
      var rawData = await dio.get('https://test.humanis.id/api/test/testAPi');
      Map data = convert.jsonDecode(rawData.toString());
      log(data.toString());
      // print(data);
      Sayur sayur = Sayur.fromJson(data);

      print('ini hasil sayur 2');
      return sayur;
    } catch (e) {
      print(e);
      return e;
    }
  }

  static Future getYummlyRecipes() async {
    Dio dio = Dio();
    // try {
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
      var customHeaders = {
        'x-rapidapi-host': 'yummly2.p.rapidapi.com',
        'x-rapidapi-key': 'ab79e0d9admsh0ca2eff724bb2e7p19f07fjsnf8f490b9021c'
      };
      options.headers.addAll(customHeaders);
      return options;
    }));

    var something = await dio.get('https://yummly2.p.rapidapi.com/feeds/list');
    log(something.toString());
    // print(something);
    // } catch (e) {
    //   return e;
    // }
  }
}
