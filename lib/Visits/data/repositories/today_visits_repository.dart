import 'dart:convert';

import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:water/Base/common/config.dart';
import 'package:water/Base/common/shared_preference_manger.dart';
import 'package:water/Base/network/network_util.dart';
import 'package:water/Visits/data/models/today_visits_details_model.dart';
import 'package:water/Visits/data/models/today_visits_model.dart';

class TodayVisitsRepository{

  Future<TodayVisitsModel?> getTodayVisits() async {
    Map<String, String> headers = {
      'lang': LocalizeAndTranslate.getLanguageCode(),
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Accept-Language': LocalizeAndTranslate.getLanguageCode() == 'ar' ? 'ar-EG' : 'en-EG',

    };
    return NetworkUtil.internal().post(
        TodayVisitsModel(),
        baseUrl + todayVisits,
        headers: headers ,
      body: jsonEncode( {
        "params":{
          "salesman": await sharedPreferenceManager.readInt(CachingKey.USER_ID)
        }
      }),);
  }

  Future<VisitDetailsModel?> getTodayVisitsDetails({String? visit_id}) async {
    Map<String, String> headers = {
      'lang': LocalizeAndTranslate.getLanguageCode(),
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Accept-Language': LocalizeAndTranslate.getLanguageCode() == 'ar' ? 'ar-EG' : 'en-EG',

    };
    return NetworkUtil.internal().post(
      VisitDetailsModel(),
      baseUrl + todayVisitsDetails,
      headers: headers ,
      body: jsonEncode( {
        "params":{
          "visit_id": visit_id
        }
      }),);
  }


}
final todayVisitsRepository = TodayVisitsRepository();