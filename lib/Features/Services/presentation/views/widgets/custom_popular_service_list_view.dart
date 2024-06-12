import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kafiil_test/constants.dart';

import '../../../data/manger/popular_service_cubit/popular_service_cubit.dart';
import 'list_view_item.dart';

class CustomPopularServiceListView extends StatelessWidget {
  const CustomPopularServiceListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopularServiceCubit, PopularServiceState>(
      builder: (context, state) {
        if (state is PopularServiceSuccess) {
          return SizedBox(
            height: 192,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.data.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: CustomListViewItem(
                    model: state.data[index],
                  ),
                );
              },
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: kPrimaryColor,
            ),
          );
        }
      },
    );
  }
}
