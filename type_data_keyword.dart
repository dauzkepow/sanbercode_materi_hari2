/*
//helo brot
void main() {
  print("Hello World"); //Hello World
}
*/

/*
//input output
import 'dart:io';

void main(List<String> args) {
  print("masukan password");

  String? inputText = stdin.readLineSync()!;

  print("password Anda : ${inputText}");
}
*/

/*
//Data Type
//-> sekumpilan informasi yang memiliki nilai tertentu
Number : number dibagi menjadi dua yaitu integer dan double
String : tipe data berupa text atau kumpulan karakter, biasanya string dibungkus dalam tanda petik ganda (double quote) atau tanda petik tunggal (single quote).
Boolean: tipe data dengan nilai true atau false
List & maps : daftar tipe data untuk merepresentasikan sekumpulan object
*/

/*
//variabel
void main() {
  var name = "John"; // Tipe
  var angka = 12;
  var todayIsFriday = false;

  print(name); // "John"
  print(angka); // 12
  print(todayIsFriday); // false
}
*/

/*
//operator
void main() {
  // =
  var angka;
  angka = 10; // Contoh assignment variable angka dengan nilai 10
  print(angka);
  print('\n');

  //Equal Operator (==)
  var angka1 = 100;
  print(angka1 == 100); // true
  print(angka1 == 20); // false
  print('\n');

  //Not Equal ( != )
  var sifat = "rajin";
  print(sifat != "malas"); // true
  print(sifat != "bandel"); //true
  print('\n');

  //Kurang dari & Lebih Dari ( <, >, <=, >=)
  var number = 17;
  print(number < 20); // true
  print(number > 17); // false
  print(number >= 17); // true, karena terdapat sama dengan
  print(number <= 20); // true
  print('\n');

  // OR ( || )
  print(true || true); // true
  print(true || false); // true
  print(true || false || false); // true
  print(false || false); // false
  print('\n');

  //AND ( && )
  print(true && true); // true
  print(true && false); // false
  print(false && false); // false
  print(false && true && true); // false
  print(true && true && true); // true
}
*/

//- Type-Data -

/*
//String
//dapat diakses dengan menggunakan indeks
void main() {
  var sentences = "dart";
  print(sentences[0]); // "d"
  print(sentences[2]); // "r"
}

//String pada dart juga memiliki property dan methods tertentu.
//Property dan methods tersebut bisa kita gunakan dalam memanipulasi data agar sesuai dengan program yang kita inginkan.
*/

/*
//Numbers
void main() {
  /*
  // declare an integer
  int num1 = 10;

  // declare a double value
  double num2 = 10.50;

  // print the values
  print(num1); //10
  print(num2); //10.5
  */

  // mengubah string menjadi integer, method num.parse()
  print(num.parse('12')); //12
  print(num.parse('10.91')); //10.91
  //print(num.parse('12A')); //error jika memasukkan huruf

  // mengubah dari int ke string
  int j = 45;
  String t = '$j';
  print('hello ' + t);
  print('hello $t');
}
*/

//- Keyword pada Dart -
/*
variabel yang nilainya tidak berubah = final dan const
compile-time, runtime
-> tahapan ruang lingkup pemrograman, source code menentukan bagaimana 
program akan berfungsi yang sesuai harapan

compilation = source code yang ditulis dikompilasi menjadi kode mesin 
agar dapat dikenali lalu dieksekusi komputer yang hanya tau 1 dan 0

compile-time = int dan double menjadi nilai awal yang sama setiap menjalankan
program, nilai ini ditetapkan pada saat kompilasi

RUN = memberikan var pada program menunjukkan bahwa nilai (value) ditampilkan
oleh pernyataan print, dapat berubah setiap kali program dijalankan
tidak dapat ditentukan hingga program benar2 saat dijalankan telah fixed pada 
waktu proses (run time)

Immutable = tidak bisa berubah
Mutable = bisa berubah

*/

/*
void main() {
  //variabel immutable tidak bisa dirunah setelah diinialisasi,
  //menghasilkan error ketika mengubah nilai awal untuk kedua kalinya

  final umur = 21;
  //umur = 22;
  // error: 'umur', a final variable, can only be set once
  const age = 21;
  // age = 22;
  print(umur);
  //error: Constant variabels can't be assigned a value

  //ketika deklarasi variabel immutable harus langsung memberi nilai
  //program akan error ketika tidak menginisasi niai
  final umur1;
  //error: The final variable 'umur1' must be initialized

  //const age1;
  //error: Constant variabels 'age1' must be initialized

  //yang benar seperti ini
  final umur2 = 21;
  const age2 = 22;

  //- untuk membuat immutable variabel, dapat menggunakan keyword final dan const -
}
*/

/*
//Final
void main() {
  //Final
  //-> diinialisasi pada saat pertama kali digunakan dan disetel sekali
  //diketahui pada saat run-time

  //final figunakan untuk deklarasi variable immutable yang nilainya sudah
  // ataupun belum diketahui pada saat waktu kompilasi berjalan
  final umur3 = 21;
  print(umur3); //21
  print('\n');

  //menetapkan nilai variabel umur3 = 21, pada saat dicompile nilai variabel
  //sudah diketahui nilainya karena diinialisasi secara langsung dengan sebuah value
  //sehingga dikompilasi nilainya sudah ada

  //contoh penggunaan final pada saat kompilasi nilai variabel belum diketahui
  //variabel sudah diinialisasi namun nilainya akan didapatkan saat kompilasi
  final waktu = new DateTime.now();
  print(waktu); //2024-12-03 12:49:01.093

  //pada saat dijalankan kedua kalinya output berbeda
  //Mengapa hasilnya berbeda setiap kali dijalankan???
  
  //karena nilai dari DateTime.now() akan didapat setelah program dijalankan
  //dikompilasi dengan nilai kembaliannya berupa waktu sekarang
  //makanya dijalankan hasilnya berbeda
  
  //nilai dari variabel final waktu = new DateTime.now() baru akan didapatkan saat
  //kompilasi, sebelum dikompilasi nilainya belum diketahui secara eksplisit
}
*/

//Const
void main() {
  //digunakan untuk deklarasi variabel immutable yang nilainya konstan dan harus diketahui
  //pada saat waktu kompilasi berjalan
  //nilai dari variabel harus sudah diberikan value secara langsung

  const umur4 = 21;
  print('Umur = $umur4');

  //contoh diatas saat compile nilai variabel sudah diketahui,
  //variabel sudah diberi nilai langsung

  //contoh lain saat kompilasi variabelnya belum diketahui secara langsung
  //variabel diinisialisasi namum nilainya baru didapat saat kompilasi

  //const waktu = new DateTime.now();
  //print(waktu);

  //error = Const variables must be initialized with a constant value

  //menghasilkan errir karena nilai variabel waktu tidak dapat diinialisasi dengan
  //nilai yang bersifat konstan
  //const memerlukan nilai langsung dan nilainya harus sudah diketahui sebelum program dikompilasi

  //berbeda final yang mana nilai dari variabel tidak error kalau didapatkan saat kompilasi

  //kesimpulan :
  //final figunakan untuk deklarasi variable immutable yang nilainya sudah
  // ataupun belum diketahui pada saat waktu kompilasi berjalan

  //const = nilai variabel wajib harus langsung diketahui dan ada sebelum dikompilasi
}
