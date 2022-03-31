class CalcEvent
{
  int? _a;
  int? _b;
  String? _method;

  CalcEvent(this._a, this._b, this._method);

  int get a => _a!;

  int get b => _b!;

  String get method => _method!;

  set method(String value) {
    _method = value;
  }

  set a(int value) {
    _a = value;
  }

  @override
  String toString() {
    return 'CalcEvent{_a: $_a, _b: $_b, _method: $_method}';
  }

  set b(int value) {
    _b = value;
  }
}