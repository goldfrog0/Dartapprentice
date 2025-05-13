extension on int {
  Duration get days {
    return Duration(days: this);
  }

  Duration get hours {
    return Duration(hours: this);
  }

  Duration get minutes {
    return Duration(minutes: this);
  }

  Duration get seconds {
    return Duration(seconds: this);
  }

  Duration get milliseconds {
    return Duration(milliseconds: this);
  }

  Duration get microseconds {
    return Duration(microseconds: this);
  }
}


void main(List<String> args) {
  print(2.minutes);
}
//test
