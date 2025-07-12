class TogglePaygroundFavorite {
 final int playgroundId;
 final String type;

  TogglePaygroundFavorite({required this.playgroundId, required this.type});

  Map<String, dynamic> toJson() => {'playgroundId': playgroundId, 'type': type};
}