class BallCount {
  const BallCount({
    required this.strikes,
    required this.balls,
  })  : assert(
          strikes >= 0 && strikes <= 3,
          "strikes is invalid",
        ),
        assert(
          balls >= 0 && balls <= 3,
          "balls is invalid",
        );
  final int strikes;
  final int balls;
}
