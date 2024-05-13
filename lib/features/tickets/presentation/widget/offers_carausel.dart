import 'package:air_tickets/features/tickets/domain/entity/music_offer.dart';
import 'package:air_tickets/features/tickets/presentation/widget/offers_carousel_item.dart';
import 'package:flutter/material.dart';

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
        SizedBox(
          height: 400,
          child: OfferCarouselItem(offer: offers[index]),
        ),
      ],
    ),
  );
}
