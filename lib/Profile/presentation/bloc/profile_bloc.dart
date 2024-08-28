import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water/Base/Helper/app_event.dart';
import 'package:water/Base/Helper/app_state.dart';
import 'package:water/Profile/data/repositories/profile_repository.dart';

import '../../../../Base/validator.dart';

class ProfileBloc extends Bloc<AppEvent,AppState> with Validator {

  ProfileBloc() :super(Start()) {
    on<GetProfileEvent>(_onGetProfileData);
  }

  Future<void> _onGetProfileData(GetProfileEvent event,
      Emitter<AppState> emit) async {
    emit(Loading());
    var response = await profileRepository.getProfileDetails();
    try{
      if (response!.success! ) {
        emit(GetProfileDone(profileModel: response));
      } else {
        emit(GetProfileErrorLoading(message: response.message));
      }
    }catch(e){
      emit(GetProfileErrorLoading(message: e.toString()));
    }

  }


}

ProfileBloc profileBloc = new ProfileBloc();


