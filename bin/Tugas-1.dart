void main(){
    String Namakaryawan = "Rivai";
    int jamkerja = 8;
    double upahperjam = 10000;
    bool status = true;
    double gajikotor = jamkerja * upahperjam;
    double pajak;
    if (status) {
        pajak = gajikotor * 0.10; 
    }else{
        pajak = gajikotor * 0.05;
        }
    double gajibersih = gajikotor - pajak;
    print ("Nama Karyawan = $Namakaryawan");
    print ("Gaji Kotor = $gajikotor");
    print ("Pajak = $pajak");
    print ("Gaji Bersih = $gajibersih");
}      