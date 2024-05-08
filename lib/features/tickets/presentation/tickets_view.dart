import 'package:air_tickets/core/assets/res/svg_icons.dart';
import 'package:air_tickets/core/assets/text/text_theme.dart';
import 'package:air_tickets/core/colors/color_scheme.dart';
import 'package:air_tickets/features/tickets/domain/bloc/tickets_bloc.dart';
import 'package:air_tickets/features/tickets/domain/entity/music_offer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TicketsView extends StatefulWidget {
  const TicketsView({super.key});

  @override
  State<TicketsView> createState() => _TicketsViewState();
}

class _TicketsViewState extends State<TicketsView> {
  String _departureLocation = '';
  String _arrivalLocation = '';

  @override
  void initState() {
    super.initState();
    _loadLastInput();
  }

  Future<void> _loadLastInput() async {
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

  void _showAdditionalInformation() {}

  @override
  Widget build(BuildContext context) => BlocBuilder<TicketsBloc, TicketsState>(
        builder: (context, state) => switch (state) {
          TicketsState$Loading() => const CircularProgressIndicator(),
          _ => const Tickets()
        },
      );
}

class Tickets extends StatelessWidget {
  const Tickets({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyles = AppTextTheme.of(context);
    final colors = AppColorScheme.of(context);
    return Column(
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
          child: SizedBox(
            width: double.infinity,
            height: 122,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: colors.primary,
                borderRadius: BorderRadius.circular(16.0),
                border: Border.all(color: colors.primary),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: colors.secondary,
                    border: Border.all(color: colors.secondary),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Row(
                    children: [
                      const Text('Лупа'),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            // TODO(add): extract widget
                            //Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(left: 1),
                              child: TextField(
                                onChanged: (value) {},
                                /*(value) {
                                  setState(() {
                                    _departureLocation = value;
                                  });
                                  _saveInput();
                                },*/
                                decoration: InputDecoration(
                                  // contentPadding: EdgeInsets.only(left: 0,top: 0,bottom: 0,right: 0),
                                  contentPadding: const EdgeInsets.fromLTRB(
                                    0,
                                    16.0,
                                    16.0,
                                    0,
                                  ),
                                  hintStyle: textStyles.semibold16_130.apply(
                                    color: colors.inactive,
                                  ),
                                  hintText: 'Откуда - Москва',
                                  border: const OutlineInputBorder(
                                      //borderSide: BorderSide.none,
                                      ),
                                ),
                                //textAlign: TextAlign.left,
                                textAlignVertical: TextAlignVertical.bottom,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                    RegExp(r'[а-яА-Я\s]'),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: colors.divider,
                              height: 1,
                            ),
                            // TODO(add): extract widget
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 1),
                                child: TextField(
                                  onChanged: (value) {},
                                  /*(value) {
                                    setState(() {
                                      _arrivalLocation = value;
                                    });
                                    _saveInput();
                                  },*/
                                  // onTap: _showAdditionalInformation,
                                  decoration: InputDecoration(
                                    // contentPadding: EdgeInsets.only(top: 18),
                                    hintText: 'Куда - Турция',
                                    hintStyle: textStyles.semibold16_130
                                        .apply(color: colors.inactive),
                                    border: const OutlineInputBorder(
                                        // borderSide: BorderSide.none,
                                        ),
                                  ),
                                  textAlign: TextAlign.left,
                                  textAlignVertical: TextAlignVertical.top,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(
                                      RegExp(r'[а-яА-Я\s]'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // Spacer(),
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
          child: Text(
            'Музыкально отлететь',
            style: textStyles.semibold22.apply(
              color: colors.primaryText,
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        BlocBuilder<TicketsBloc, TicketsState>(
          builder: (context, state) => Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: OffersCarousel(offers: state.offers),
            ),
          ),
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
            SizedBox(height: 400, child: OfferCard(offer: offers[index])),
          ],
        ),
      );
}

class OfferCard extends StatelessWidget {
  const OfferCard({super.key, required this.offer});

  final Offer offer;

  String _getImagePath(int id) {
    switch (id) {
      case 1:
        return 'assets/images/offer1.png';
      case 2:
        return 'assets/images/offer2.png';
      case 3:
        return 'assets/images/offer3.png';
      default:
        return 'assets/images/offer1.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    final textStyles = AppTextTheme.of(context);
    final colors = AppColorScheme.of(context);
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 132),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            _getImagePath(offer.id),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            offer.title,
            style: textStyles.semibold16.apply(color: colors.primaryText),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            offer.town,
            style: textStyles.regular14.apply(color: colors.primaryText),
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              SvgPicture.asset(
                SvgIcons.airplane,
                colorFilter: ColorFilter.mode(colors.icons, BlendMode.srcIn),
              ),
              Expanded(
                child: Text(
                  style: textStyles.regular14.apply(
                    color: colors.primaryText,
                  ),
                  overflow: TextOverflow.visible,
                  'от ${offer.price.value.toString()} ₽',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
