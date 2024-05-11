import 'package:air_tickets/core/assets/res/svg_icons.dart';
import 'package:air_tickets/core/assets/text/text_theme.dart';
import 'package:air_tickets/core/colors/color_scheme.dart';
import 'package:air_tickets/features/tickets/domain/bloc/tickets_bloc.dart';
import 'package:air_tickets/features/tickets/domain/entity/music_offer.dart';
import 'package:air_tickets/features/tickets/presentation/view/tickets_modal_detail.dart';
import 'package:air_tickets/features/tickets/presentation/widget/from_custom_text_field.dart';
import 'package:air_tickets/features/tickets/presentation/widget/offers_carousel_item.dart';
import 'package:air_tickets/features/tickets/presentation/widget/to_custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TicketsView extends StatefulWidget {
  const TicketsView({super.key});

  @override
  State<TicketsView> createState() => _TicketsViewState();
}

class _TicketsViewState extends State<TicketsView> {
//  String _departureLocation = '';
  // String _arrivalLocation = '';

  @override
  void initState() {
    super.initState();
    //_loadLastInput();
  }

  /* Future<void> _loadLastInput() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _departureLocation = prefs.getString('departureLocation') ?? '';
      _arrivalLocation = prefs.getString('arrivalLocation') ?? '';
    });
  }

  Future<void> _saveInput() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('departureLocation', _departureLocation);
    await prefs.setString('arrivalLocation', _arrivalLocation);
  }
*/

  @override
  Widget build(BuildContext context) {
    final textStyles = AppTextTheme.of(context);
    final colors = AppColorScheme.of(context);
    return BlocBuilder<TicketsBloc, TicketsState>(
      builder: (context, state) => switch (state) {
        TicketsState$Loading() =>
          const Center(child: CircularProgressIndicator()),
        TicketsState$Error() => Center(
            child: Expanded(
              child: Text(
                state.message,
                style: textStyles.semibold22.apply(
                  color: colors.primaryText,
                ),
              ),
            ),
          ),
        _ => Scaffold(
            body: const SafeArea(
              child: Tickets(),
            ),
            backgroundColor: colors.background,
          )
      },
    );
  }
}

class Tickets extends StatelessWidget {
  const Tickets({super.key});

  void _showBottomSheet(
    BuildContext context,
    AppColorScheme colors,
  ) {
    showModalBottomSheet<dynamic>(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (context) => const TicketsModalDetail(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textStyles = AppTextTheme.of(context);
    final colors = AppColorScheme.of(context);
    return ListView(
      shrinkWrap: true,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 94),
              child: Text(
                textAlign: TextAlign.center,
                'Поиск дешевых авиабилетов',
                style: textStyles.semibold22.apply(
                  color: colors.primaryText,
                ),
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                height: 122,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: colors.primary,
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(color: colors.primary),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Material(
                    color: colors.secondary,
                    elevation: 5,
                    borderRadius: BorderRadius.circular(16.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: colors.secondary,
                          borderRadius: BorderRadius.circular(16.0),
                         ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: SvgPicture.asset(SvgIcons.search),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 1),
                                  child: FromCustomTextField(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: Divider(
                                    color: colors.divider,
                                    height: 1,
                                  ),
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 1),
                                    child: ToCustomTextField(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: GestureDetector(
                onTap: () => _showBottomSheet(context, colors),
                child: Text(
                  'Музыкально отлететь',
                  style: textStyles.semibold22.apply(
                    color: colors.primaryText,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            BlocBuilder<TicketsBloc, TicketsState>(
              builder: (context, state) => Padding(
                padding: const EdgeInsets.only(left: 12),
                child: SizedBox(
                  height: 214,
                  child: OffersCarousel(offers: state.offers),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class OffersCarousel extends StatelessWidget {
  const OffersCarousel({super.key, required this.offers});

  final List<Offer> offers;

  @override
  Widget build(BuildContext context) => ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: offers.length,
        itemBuilder: (context, index) => Row(
          children: [
            if (index != 0)
              const SizedBox(
                width: 67,
              ),
            SizedBox(height: 400, child: OfferCarouselItem(offer: offers[index])),
          ],
        ),
      );
}
