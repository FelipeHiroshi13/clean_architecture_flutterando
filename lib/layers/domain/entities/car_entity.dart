class CarEntity {
  String plate;
  int qttyDoors;
  double value;

  CarEntity({
    required this.plate,
    required this.qttyDoors,
    required this.value,
  });

  double get realValue {
    return value * qttyDoors;
  }

  setFavoriteCarValue() {
    if (value < 1000) {
      value *= 2;
    }
  }
}
