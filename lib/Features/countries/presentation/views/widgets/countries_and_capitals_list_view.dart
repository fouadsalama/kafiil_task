import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kafiil_test/Features/countries/data/manger/countries_cubit/countries_name_cubit.dart';
import 'package:kafiil_test/constants.dart';

import 'country_item.dart';

class CountriesAndCapitalsListView extends StatelessWidget {
  const CountriesAndCapitalsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountriesNameCubit, CountriesNameState>(
      builder: (context, state) {
        if (state is CountriesNameSuccess) {
          return Expanded(
            child: ListView.builder(
              itemCount: state.data.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CountryItem(
                          text: state.data[index].name!,
                        ),
                        CountryItem(
                          text: state.data[index].capital!,
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: Divider(
                        color: Color(0xffF2F2F2),
                      ),
                    ),
                  ],
                );
              },
            ),
          );
        } else {
          return const Expanded(
            child: Center(
              child: CircularProgressIndicator(
                color: kPrimaryColor,
              ),
            ),
          );
        }
      },
    );
  }
}
