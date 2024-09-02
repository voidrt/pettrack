import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:pet_track/theme/paddings.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({
    super.key,
    required this.mediaQuerySize,
  });

  final Size mediaQuerySize;

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: widget.mediaQuerySize.height / 12,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        margin: const EdgeInsets.all(
          Paddings.small,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onSurface,
          borderRadius: const BorderRadius.all(
            Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color:
                  Theme.of(context).colorScheme.inverseSurface.withOpacity(0.2),
              offset: const Offset(0, 3),
            )
          ],
        ),
        child: TabBar(
          labelStyle: Theme.of(context).textTheme.labelMedium,
          labelColor: Theme.of(context).colorScheme.primary,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 5,
          unselectedLabelStyle: const TextStyle(fontSize: 0),
          dividerColor: Colors.transparent,
          indicator: const BoxDecoration(),
          unselectedLabelColor:
              Theme.of(context).colorScheme.inverseSurface.withOpacity(0.7),
          tabs: const [
            Tab(
              text: 'Meus Pets',
              iconMargin: EdgeInsets.symmetric(vertical: 2),
              icon: Icon(LineIcons.cat, size: 25),
            ),
            Tab(
              text: 'Meu Perfil',
              iconMargin: EdgeInsets.symmetric(vertical: 2),
              icon: Icon(LineIcons.user, size: 25),
            ),
          ],
        ),
      ),
    );
  }
}
