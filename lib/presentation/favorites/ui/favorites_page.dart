import 'package:codeunion_test/data/models/restaurant_dto.dart';
import 'package:codeunion_test/presentation/app/widgets/custom_snackbars.dart';
import 'package:codeunion_test/presentation/favorites/bloc/favorites_cubit.dart';
import 'package:codeunion_test/presentation/home/widgets/restaurant_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<FavoritesCubit>(context).getRestaurants();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavoritesCubit, FavoritesState>(
      listener: (context, state) {
        state.whenOrNull(
          errorState: (message) => buildErrorCustomSnackBar(context, message),
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
                  fromFavPage: true,
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
    );
  }
}
