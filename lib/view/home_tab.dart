import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:interspark_assignment/bloc/vehicle_bloc.dart';
import 'package:interspark_assignment/view/vehicle_detail_screen.dart';

import '../widget/button.dart';
import '../widget/employee_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widget/loader_widget.dart';
import '../widget/txtButton.dart';

class HomeTab extends StatefulWidget {
  HomeTabState createState() => HomeTabState();
}

class HomeTabState extends State<HomeTab> {
  String dropDownValue = 'Select any';
  final employeeBloc = Modular.get<VehicleBloc>();
  int _page = 1;
  late ScrollController _controller;
  bool paginationLoader = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: employeeBloc,
        builder: (context, state) {
          return employeeBloc.state.isLoading
              ? LoaderWidget()
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 25),
                      const Text(
                        'Employee List',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black45),
                      ),
                      const SizedBox(height: 15),
                      Expanded(
                          child: ListView.builder(
                              itemCount: employeeBloc.state.list.length,
                              controller: _controller,
                              itemBuilder: (BuildContext context, int pos) {
                                return Column(
                                  children: [
                                    EmployeeCard(
                                      empEmail: employeeBloc.state.list
                                          .elementAt(pos)
                                          .email,
                                      empName: employeeBloc.state.list
                                          .elementAt(pos)
                                          .name,
                                      empPhone: employeeBloc.state.list
                                          .elementAt(pos)
                                          .phone,
                                      imageUrl: employeeBloc.state.list
                                          .elementAt(pos)
                                          .avatar,
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      margin: const EdgeInsets.only(right: 15),
                                      child: Row(
                                        children: [
                                          const Spacer(),
                                          CustomTextButton(
                                            text: 'Details',
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          EmployeeDetails(
                                                              pos)));
                                            },
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                );
                              })),
                      employeeBloc.state.isLoadingPagination
                          ? Container(
                              color: Colors.white,
                              height: 70,
                              child: Center(child: LoaderWidget()),
                            )
                          : Container()
                    ],
                  ),
                );
        });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    employeeBloc.fetchVehicleData(
        '/employee?page=$_page&limit=10', context, true);
    _controller = ScrollController();
    _controller.addListener(() {
      if (_controller.position.pixels == _controller.position.maxScrollExtent) {
        _page++;
        if (employeeBloc.state.loadMoreData) {
          employeeBloc.fetchVehicleData(
              '/employee?page=$_page&limit=10', context, false);
        }
      }
    });
  }
}
