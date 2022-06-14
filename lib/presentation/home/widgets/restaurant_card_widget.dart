import 'package:codeunion_test/common/constants.dart';
import 'package:codeunion_test/data/models/restaurant_dto.dart';
import 'package:codeunion_test/presentation/favorites/bloc/favorites_cubit.dart';
import 'package:codeunion_test/presentation/home/bloc/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantCardWidget extends StatelessWidget {
  final RestaurantDTO restaurant;
  final bool? fromFavPage;
  const RestaurantCardWidget({
    required this.restaurant,
    this.fromFavPage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      height: MediaQuery.of(context).size.height * 0.3,
      child: Material(
        child: InkWell(
          borderRadius: BorderRadius.circular(6),
          onTap: () {
            // TODO Restaurant Detail Page
          },
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(
                    image: restaurant.images != null &&
                            restaurant.images!.isNotEmpty
                        ? NetworkImage(
                            restaurant.images!.first.url,
                          )
                        : const NetworkImage(
                            NOT_FOUND_IMAGE,
                          ),
                    fit: BoxFit.cover,
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.18,
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Text(
                                '${restaurant.title}',
                                style: GoogleFonts.manrope(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              child: Text(
                                '${restaurant.description}',
                                style: GoogleFonts.manrope(
                                  color: AppColors.kGray,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          if (restaurant.isFavorite) {
                            BlocProvider.of<HomeCubit>(context)
                                .deleteLike(resId: restaurant.id);
                          } else {
                            BlocProvider.of<HomeCubit>(context)
                                .addLike(resId: restaurant.id);
                          }

                          if (fromFavPage != null && fromFavPage!) {
                            if (restaurant.isFavorite) {
                              BlocProvider.of<FavoritesCubit>(context)
                                  .deleteLike(resId: restaurant.id);
                            } else {
                              BlocProvider.of<FavoritesCubit>(context)
                                  .addLike(resId: restaurant.id);
                            }
                          }
                        },
                        icon: restaurant.isFavorite
                            ? const Icon(
                                Icons.favorite,
                                color: AppColors.kRed,
                              )
                            : const Icon(
                                Icons.favorite_border_outlined,
                                color: AppColors.kGray,
                              ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
