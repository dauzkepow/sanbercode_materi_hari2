//referensi = https://www.youtube.com/watch?v=A72IqWQwtl4

/*
// tanpa null safety
bool isEmpty(String string) => string.length == 0;

main() {
  isEmpty(null); //error
}
//tanpa null safety akan error
*/

/*
//dengan null safety
bool isEmpty(String? string) => string?.length == 0;

main() {
  isEmpty(null);
}
*/

/*
kenapa null safety?
karena secara default tipe data yang digunakan non-nullable
nilainya tidak boleh berisi null sampai mengatakan boleh mengisi null

dengan null safety error pada runtime akan dimunculkan saat edit-time analisis error
dengan null safety semua variabel adalah non-nullable

untuk mengindikasikan variabel bisa null maka tambahkan operator ? pada variabel

int? bulangan = null;

Pada saat membuat program jika kita tahu bahwa variabel non-nullable akan diinisialisasi
ke nilai bukan null sebelum digunakan, dart analyzer tidak akan mengizinkan dan menampilkan pesan error pada saat edit time
maka gunakan keyword late sebelum tipe data dari variabel tersebut
*/

//contoh
class Segitiga {
  int _alas;
  int _tinggi;

  set alas(int value) => _alas = value;
  set tinggi(int value) => _tinggi = value;

  double luas() {
    return (_alas * _tinggi) / 2;
  }
}

void main() {
  var sg = Segitiga();
  sg.alas = 5;
  sg.tinggi = 10;
  print(sg.luas());
}


