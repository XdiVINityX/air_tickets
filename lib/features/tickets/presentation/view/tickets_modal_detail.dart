import 'package:air_tickets/core/assets/res/svg_icons.dart';
import 'package:air_tickets/core/assets/text/text_theme.dart';
import 'package:air_tickets/core/colors/color_scheme.dart';
import 'package:air_tickets/features/tickets/domain/bloc/tickets_bloc.dart';
import 'package:air_tickets/features/tickets/presentation/widget/from_custom_text_field.dart';
import 'package:air_tickets/features/tickets/presentation/widget/to_custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TicketsModalDetail extends StatelessWidget {
  const TicketsModalDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = AppColorScheme.of(context);
    final textStyles = AppTextTheme.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
        color: colors.backgroundSecondary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 16,
              ),
              const TopLane(),
              const SizedBox(
                height: 24,
              ),
              BlocBuilder<TicketsBloc, TicketsState>(
                  builder: (context, state) => const FrameFromTo(),),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 2),
                child: SizedBox(
                  height: 90,
                  child: Row(
                    children: [
                      HelpIcon(
                        color: colors.iconPathBox,
                        assetNameIcon: SvgIcons.path,
                        title: 'Сложный маршрут',
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      SizedBox(
                        // TODO(be79): work when width 82, mb need to change text style
                        width: 82,
                        child: HelpIcon(
                          color: colors.iconBallBox,
                          assetNameIcon: SvgIcons.ball,
                          title: 'Куда угодно',
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      HelpIcon(
                        color: colors.iconCalendarBox,
                        assetNameIcon: SvgIcons.calendar,
                        title: 'Выходные',
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      HelpIcon(
                        color: colors.iconFireBox,
                        assetNameIcon: SvgIcons.fire,
                        title: 'Горячие билеты',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const PopularDestinations(),
            ],
          ),
        ),
      ),
    );
  }
}

class TopLane extends StatelessWidget {
  const TopLane({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = AppColorScheme.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
        color: colors.divider,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const SizedBox(
        height: 5,
        width: 38,
      ),
    );
  }
}

class FrameFromTo extends StatefulWidget {
  const FrameFromTo({super.key});

  @override
  State<FrameFromTo> createState() => _FrameFromToState();
}

class _FrameFromToState extends State<FrameFromTo> {
  void _inputDestinationChanged(String query) {
    context
        .read<TicketsBloc>()
        .add(TicketsEvent.inputDestinationChanged(query));
  }

  @override
  Widget build(BuildContext context) {
    final colors = AppColorScheme.of(context);
    final textStyles = AppTextTheme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: double.infinity,
          height: 96,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: colors.primary,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(SvgIcons.airplane2),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: BlocBuilder<TicketsBloc, TicketsState>(
                          buildWhen: (previous, current) =>
                              previous.queryDestination !=
                              current.queryDestination,
                          builder: (context, state) => FromCustomTextField(
                            onChanged: _inputDestinationChanged,
                            destinationQuery: state.queryDestination,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: colors.dividerSecondary,
                    height: 1,
                  ),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 46),
                    child: Row(
                      children: [
                        SvgPicture.asset(SvgIcons.search),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: ToCustomTextField(
                            autofocus: true,
                            onPressed: () {},
                          ),
                        ),
                        const Spacer(),
                        SvgPicture.asset(SvgIcons.cross),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class HelpIcon extends StatelessWidget {
  const HelpIcon({
    super.key,
    required this.color,
    required this.title,
    required this.assetNameIcon,
  });

  final Color color;
  final String title;
  final String assetNameIcon;

  @override
  Widget build(BuildContext context) {
    final textStyles = AppTextTheme.of(context);
    final colors = AppColorScheme.of(context);
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 79, minWidth: 64),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 48,
            width: 48,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: SvgPicture.asset(
                  assetNameIcon,
                  height: 24,
                  width: 24,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: textStyles.regular14.apply(color: colors.primaryText),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

/*8 - рекомендации мест прибытия. Хардкод согласно макету. Элементы кликабельны.
При выборе в поле ввода места прибытия проставляется название соотв. города.*/
class PopularDestinations extends StatelessWidget {
  const PopularDestinations({super.key});

  String _getImagePath(int id) {
    switch (id) {
      case 1:
        return 'assets/images/stambul.png';
      case 2:
        return 'assets/images/sochi.png';
      case 3:
        return 'assets/images/phuket.png';
      default:
        return 'assets/images/sochi.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = AppColorScheme.of(context);

    final destinations = [
      {'title': 'Стамбул', 'id': 1},
      {'title': 'Сочи', 'id': 2},
      {'title': 'Пхукет', 'id': 3},
    ];

    return SizedBox(
      width: double.infinity,
      height: 216,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color.primary,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
          child: ListView.builder(
            itemCount: destinations.length,
            itemBuilder: (context, index) {
              final destination = destinations[index];
              return Padding(
                padding: const EdgeInsets.only(top: 8),
                child: PopularDestinationsItem(
                  title: destination['title'].toString(),
                  imagePath: _getImagePath(destination['id']! as int),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class PopularDestinationsItem extends StatelessWidget {
  const PopularDestinationsItem({
    super.key,
    required this.title,
    required this.imagePath,
  });

  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    final textStyles = AppTextTheme.of(context);
    final colors = AppColorScheme.of(context);
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: Column(
        children: [
          //отступ сверху
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              SizedBox(
                height: 40,
                width: 40,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style:
                        textStyles.semibold16.apply(color: colors.primaryText),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Популярное направление',
                    style: textStyles.regular14.apply(color: colors.textHint),
                  ),
                ],
              ),
            ],
          ),
          //отступ снизу
          const SizedBox(
            height: 7,
          ),
          Divider(
            color: colors.dividerSecondary,
            height: 1,
          ),
        ],
      ),
    );
  }
}
