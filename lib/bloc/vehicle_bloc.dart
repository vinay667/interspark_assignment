import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/employee_model.dart';
import '../network/api_helper.dart';

part 'vehicle_state.dart';

part 'vehicle_bloc.freezed.dart';

class VehicleBloc extends Cubit<VehicleState> {
  ApiBaseHelper helper = ApiBaseHelper();

  VehicleBloc() : super(const VehicleState());

  fetchVehicleData(
      String urlEndPoint, BuildContext context, bool loadMainLoader) async {
    if (loadMainLoader) {
      emit(state.copyWith(isLoading: true));
    } else {
      emit(state.copyWith(isLoadingPagination: true));
    }
    var response = await helper.get(urlEndPoint, context);
    final rawList = json.decode(response.body);
    EmployeeResponseModel empList = EmployeeResponseModel.fromJson(rawList);
    if (empList.list.isEmpty) {
      emit(state.copyWith(loadMoreData: false));
    }

    List<Data> homeList = [];

    if (state.list.isNotEmpty) {
      homeList.addAll(state.list);
      homeList.addAll(empList.list);
    } else {
      homeList.addAll(empList.list);
    }

    if (loadMainLoader) {
      emit(state.copyWith(isLoading: false, list: homeList));
    } else {
      emit(state.copyWith(isLoadingPagination: false, list: homeList));
    }
  }
}
