library dashboard;

import 'dart:developer';
import 'dart:html';
import 'dart:js';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:project_management/app/constans/app_constants.dart';
import 'package:project_management/app/shared_components/chatting_card.dart';
import 'package:project_management/app/shared_components/get_premium_card.dart';
import 'package:project_management/app/shared_components/list_profil_image.dart';
import 'package:project_management/app/shared_components/progress_card.dart';
import 'package:project_management/app/shared_components/progress_report_card.dart';
import 'package:project_management/app/shared_components/responsive_builder.dart';
import 'package:project_management/app/shared_components/upgrade_premium_card.dart';
import 'package:project_management/app/shared_components/project_card.dart';
import 'package:project_management/app/shared_components/search_field.dart';
import 'package:project_management/app/shared_components/selection_button.dart';
import 'package:project_management/app/shared_components/task_card.dart';
import 'package:project_management/app/shared_components/today_text.dart';
import 'package:project_management/app/utils/helpers/app_helpers.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

// binding
part '../../bindings/dashboard_binding.dart';

// controller
part '../../controllers/dashboard_controller.dart';

// models
part '../../models/profile.dart';

// component
part '../components/active_project_card.dart';
part '../components/header.dart';
part '../components/overview_header.dart';
part '../components/profile_tile.dart';
part '../components/recent_messages.dart';
part '../components/sidebar.dart';
part '../components/team_member.dart';

class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      body: SingleChildScrollView(
          child: ResponsiveBuilder(
        mobileBuilder: (context, constraints) {
          return Column(
            children: [],
          );
        },
        tabletBuilder: (context, constraints) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: (constraints.maxWidth < 950) ? 6 : 9,
                child: Column(
                  children: [
                    const SizedBox(height: kSpacing * (kIsWeb ? 1 : 2)),
                    const SizedBox(height: kSpacing * 2),
                    _buildProgress(
                      axis: (constraints.maxWidth < 950)
                          ? Axis.vertical
                          : Axis.horizontal,
                    ),
                    const SizedBox(height: kSpacing * 2),
                    const SizedBox(height: kSpacing * 2),
                  ],
                ),
              ),
              Flexible(
                flex: 4,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: kSpacing),
                      child: _Sidebar(data: controller.getSelectedProject()),
                    ),
                  ],
                ),
              )
            ],
          );
        },
        desktopBuilder: (context, constraints) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [],
          );
        },
      )),
    );
  }

  Widget _buildProgress({Axis axis = Axis.horizontal}) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(width: kSpacing / 2),
            const Flexible(
              flex: 4,
              child: ProgressReportCard(
                data: ProgressReportCardData(
                  title: "احصائيات الصيانة",
                  doneTask: 12,
                  percent: .6,
                  task: 10,
                  undoneTask: 2,
                ),
              ),
            ),
            Flexible(
              flex: 5,
              child: ProgressCard(
                data: const ProgressCardData(
                  totalUndone: 10,
                  totalTaskInProress: 2,
                ),
                onPressedCheck: () {},
              ),
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(width: kSpacing / 2),
            const Flexible(
              flex: 4,
              child: ProgressReportCard(
                data: ProgressReportCardData(
                  title: "احصائيات الصيانة",
                  doneTask: 12,
                  percent: .6,
                  task: 10,
                  undoneTask: 2,
                ),
              ),
            ),
            Flexible(
              flex: 5,
              child: ProgressCard(
                data: const ProgressCardData(
                  totalUndone: 10,
                  totalTaskInProress: 2,
                ),
                onPressedCheck: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}
