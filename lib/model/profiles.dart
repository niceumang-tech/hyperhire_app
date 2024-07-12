class Profiles {
  String _catName, _catImage, _winnerImage;

  Profiles(this._catName, this._catImage, this._winnerImage);

  get winnerImage => _winnerImage;

  set winnerImage(value) {
    _winnerImage = value;
  }

  get catImage => _catImage;

  set catImage(value) {
    _catImage = value;
  }

  String get catName => _catName;

  set catName(String value) {
    _catName = value;
  }
}
