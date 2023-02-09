import 'package:alubank/components/box_card.dart';
import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

import '../color_dot.dart';
import '../divisor.dart';

class AccountScore extends StatelessWidget {
  const AccountScore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Pontos da conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const BoxCard(boxContent: _AccountScoreContent()),
        ],
      ),
    );
  }
}

class _AccountScoreContent extends StatelessWidget {
  const _AccountScoreContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 4),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Pontos totais:'),
                    Text(
                      '3000',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Divisor(),
        ),
        Text(
          'Objetivos:',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: ColorDot(color: ThemeColors.pointSection['delivery']),
              ),
              const Text('Entrega grátis: 15000pts'),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: ColorDot(color: ThemeColors.pointSection['streaming']),
            ),
            const Text('1 mês de streaming: 30000pts'),
          ],
        ),
      ],
    );
  }
}
