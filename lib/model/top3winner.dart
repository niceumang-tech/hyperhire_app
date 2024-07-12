class TopThree {
  String _title,
      _desc1,
      _desc2,
      _rating,
      _ratingOutOf,
      _tag1,
      _tag2,
      _images,
      _iconImage;

  TopThree(this._title, this._desc1, this._desc2, this._rating,
      this._ratingOutOf, this._tag1, this._tag2, this._images, this._iconImage);

  get images => _images;

  set images(value) {
    _images = value;
  }

  get tag2 => _tag2;

  set tag2(value) {
    _tag2 = value;
  }

  get tag1 => _tag1;

  set tag1(value) {
    _tag1 = value;
  }

  get ratingOutOf => _ratingOutOf;

  set ratingOutOf(value) {
    _ratingOutOf = value;
  }

  get rating => _rating;

  set rating(value) {
    _rating = value;
  }

  get desc1 => _desc1;

  set desc1(value) {
    _desc1 = value;
  }

  get desc2 => _desc2;

  set desc2(value) {
    _desc2 = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  get iconImage => _iconImage;

  set iconImage(value) {
    _iconImage = value;
  }
}
