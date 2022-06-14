import 'package:codeunion_test/data/models/restaurant_dto.dart';
import 'package:codeunion_test/presentation/app/widgets/custom_snackbars.dart';
import 'package:codeunion_test/presentation/home/bloc/home_cubit.dart';
import 'package:codeunion_test/presentation/home/widgets/restaurant_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // BlocProvider.of<HomeCubit>(context).getRestaurants();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 42,
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(6),
                  //   borderSide: BorderSide(
                  //     color: Color(0xffE0E6ED),
                  //   ),
                  // ),
                  prefixIcon: const Icon(Icons.search),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(
                      color: Color(
                        0xffE0E6ED,
                      ),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(
                      color: Color(0xffE0E6ED),
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(
                      color: Color(0xffE0E6ED),
                    ),
                  ),
                ),
                style: const TextStyle(fontSize: 13),
              ),
            ),
            const SizedBox(height: 4),
            Expanded(
              child: BlocConsumer<HomeCubit, HomeState>(
                listener: (context, state) {
                  state.whenOrNull(
                    errorState: (message) =>
                        buildErrorCustomSnackBar(context, message),
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    loadedState: (List<RestaurantDTO> restaurants) {
                      return ListView.separated(
                        padding: const EdgeInsets.all(16),
                        itemCount: restaurants.length,
                        itemBuilder: (context, index) {
                          return RestaurantCardWidget(
                            restaurant: restaurants[index],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(height: 20);
                        },
                      );
                    },
                    orElse: () {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
