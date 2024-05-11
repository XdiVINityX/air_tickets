import 'package:air_tickets/core/assets/res/svg_icons.dart';
import 'package:air_tickets/core/assets/text/text_theme.dart';
import 'package:air_tickets/core/colors/color_scheme.dart';
import 'package:air_tickets/features/tickets/domain/entity/music_offer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OfferCarouselItem extends StatelessWidget {
  const OfferCarouselItem({super.key, required this.offer});

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
          const SizedBox(
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
                  'от ${offer.price.value} ₽',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
