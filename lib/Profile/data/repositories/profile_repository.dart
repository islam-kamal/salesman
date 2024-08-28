
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:water/Base/common/config.dart';
import 'package:water/Base/common/shared_preference_manger.dart';
import 'package:water/Base/network/network_util.dart';
import 'package:water/Profile/data/models/profile_model.dart';


class ProfileRepository{

  Future<ProfileModel?> getProfileDetails() async {
    Map<String, String> headers = {
      'lang': LocalizeAndTranslate.getLanguageCode(),
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Accept-Language': LocalizeAndTranslate.getLanguageCode() == 'ar' ? 'ar-EG' : 'en-EG',

    };
    return NetworkUtil.internal().get(
        ProfileModel(),
        baseUrl + profileUrl+"?domain=[('id','=',${await sharedPreferenceManager.readInt(CachingKey.USER_ID)})]",
        headers: headers  );
  }
}
final profileRepository = ProfileRepository();