import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:interspark_assignment/bloc/vehicle_bloc.dart';

import '../utils/colors.dart';
import '../widget/image_preview_dialog.dart';
import '../widget/loader_widget.dart';

class EmployeeDetails extends StatefulWidget {
  final int employeeID;

  const EmployeeDetails(this.employeeID);

  EmployeeDetailsState createState() => EmployeeDetailsState();
}

class EmployeeDetailsState extends State<EmployeeDetails> {
  final employeeBloc = Modular.get<VehicleBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Employee Details'),
          backgroundColor: MyColor.appTheme,
        ),
        body: BlocBuilder(
            bloc: employeeBloc,
            builder: (context, state) {
              return Column(
                children: [
                  SizedBox(height: 20),
                  employeeBloc.state.isLoading
                      ? Center(
                          child: LoaderWidget(),
                        )
                      : Card(
                          shadowColor: Colors.tealAccent,
                          color: Colors.white,
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          elevation: 4,
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () async {
                                    await showDialog(
                                        context: context,
                                        builder: (_) => ImageDialog());
                                  },
                                  child: CircleAvatar(
                                    radius: 28, // Image radius
                                    backgroundImage: NetworkImage(employeeBloc
                                        .state.list
                                        .elementAt(widget.employeeID)
                                        .avatar),
                                  ),
                                ),
                                const SizedBox(width: 17),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 10),
                                    Text(
                                      employeeBloc.state.list
                                          .elementAt(widget.employeeID)
                                          .name,
                                      style: const TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.cyan),
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      employeeBloc.state.list
                                          .elementAt(widget.employeeID)
                                          .phone,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.deepPurpleAccent),
                                    ),
                                    const SizedBox(height: 2),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.5,
                                        child: Text(
                                          employeeBloc.state.list
                                              .elementAt(widget.employeeID)
                                              .email,
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.brown,
                                              fontStyle: FontStyle.italic),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        )),
                                    const SizedBox(height: 2),
                                    Text(
                                      employeeBloc.state.list
                                          .elementAt(widget.employeeID)
                                          .country,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                ],
              );
            }));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
}
