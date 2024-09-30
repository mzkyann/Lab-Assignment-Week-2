import 'dart:io';

class Hewan {
  void suara() {
    stdout.write('Hewan ini mengeluarkan suara.\n');
  }

  void makan() {
    stdout.write('Hewan ini sedang makan.\n');
  }
}

class Anjing extends Hewan {
  @override
  void suara() {
    stdout.write('Anjing menggonggong: Woof Woof!\n');
  }

  @override
  void makan() {
    stdout.write('Anjing sedang makan.\n');
  }
}

class Kucing extends Hewan {
  @override
  void suara() {
    stdout.write('Kucing mengeong: Meow Meow!\n');
  }

  @override
  void makan() {
    stdout.write('Kucing meminta makanan.\n');
  }
}
