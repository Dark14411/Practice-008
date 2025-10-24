import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokecard_dex/pokemon_cards/domain/entities/pokemon_card.dart';

class CardListItem extends StatelessWidget {
  const CardListItem({required this.card, super.key});

  final PokemonCard card;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: CachedNetworkImage(
          imageUrl: card.imageUrl,
          width: 50,
          fit: BoxFit.contain,
          placeholder: (context, url) => const SizedBox(
            width: 50,
            height: 50,
            child: Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
        title: Text(card.name),
        subtitle: Text('HP: ${card.hp ?? 'N/A'} - ${card.supertype ?? ''}'),
        dense: true,
      ),
    );
  }
}
