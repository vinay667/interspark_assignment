

import 'package:flutter_modular/flutter_modular.dart';
import 'package:interspark_assignment/bloc/vehicle_bloc.dart';

class AppModule extends Module
{
  @override
  List<Bind<Object>> get binds => [
    Bind.singleton<VehicleBloc>((i) => VehicleBloc()),
  ];
}