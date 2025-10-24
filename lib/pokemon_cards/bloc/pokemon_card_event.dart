part of 'pokemon_card_bloc.dart';

abstract class PokemonCardEvent extends Equatable {
  const PokemonCardEvent();

  @override
  List<Object> get props => [];
}

final class CardsFetched extends PokemonCardEvent {}