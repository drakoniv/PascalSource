program Koperasi;
var
  n,hrg,jml,tot,cde,totall:integer;
  prompt,nmab:string;
  tanggal,nama,nbrg:array of string;
  hrga,jumlah:array of integer;
procedure input_data;
var
  i:integer;
begin
//init
n:=0;
totall:=0;
//dekorasi garis atas
repeat
  for i:=0 to 50 do
  begin
    write('=');
  end;
  writeln;
  n:=n+1;
  //setup array
  setLength(tanggal,n+1);
  setLength(nama,n+1);
  setLength(hrga,n+1);
  setLength(nbrg,n+1);
  setLength(jumlah,n+1);
  //isi form
  writeln('Form Transaksi');
  writeln('Data ke-',n);
  writeln('No transaksi :',n);
  write('Tanggal:');
  readln(tanggal[n]);
  write('Nama pembeli:');
  readln(nama[n]);
  write('Kode Barang(1-10):');
  readln(cde);
  case cde of
       1:begin
              hrg:=2500000;
              nmab:='Dell Monitor 32 inch 4K UHD';
         end;
       2:begin
              hrg:=50000;
              nmab:='SanDisk Cruzer 4GB USB Flash';
         end;
       3:begin
              hrg:=999000;
              nmab:='Seagate 1TB External HDD';
         end;
       4:begin
              hrg:=2499000;
              nmab:='Nvidia GTX750Ti GDDR5';
         end;
       5:begin
              hrg:=125000;
              nmab:='Mouse';
         end;
       6:begin
              hrg:=756000;
              nmab:='Samsung 10000 mAh Fast Charging Powerbank';
         end;
       7:begin
              hrg:=400000;
              nmab:='VGA Nvidia';
         end;
       8:begin
              hrg:=436000;
              nmab:='Apple USB-C to Micro USB Converter';
         end;
       9:begin
              hrg:=185000;
              nmab:='SanDisk 32GB MicroSD Card';
         end;
       10:begin
              hrg:=3499000;
              nmab:='Seagate 4TB External HDD';
         end;
  end;
  nbrg[n]:=nmab;
  hrga[n]:=hrg;
  writeln('Nama Barang :',nmab);
  writeln('Harga :',hrg);
  write('Jumlah beli:');
  readln(jml);
  jumlah[n]:=jml;
  tot:=jml*hrg;
  writeln('Total bayar :',tot);
  totall:=totall+tot;
  writeln;
  //tambah data
  write('Tambah data (Y/N)? ');
  readln(prompt);
  if not((prompt='N')or(prompt='n')or(prompt='Y')or(prompt='y'))then
  begin
    repeat
    writeln('Tuliskan Y atau N!');
    write('Tambah data (Y/N)? ');
    readln(prompt);
    until((prompt='N')or(prompt='n')or(prompt='Y')or(prompt='y'));
  end;
until((prompt = 'N')or(prompt = 'n'));
end;

procedure output_data;
var
  i,index:integer;
begin
//dekorasi buat output
  for i:=0 to 60 do
  begin
         write('=');
  end;
  //isi
  writeln;
  writeln('|No|Tanggal|Nama Pembeli|Nama Barang|Harga |Jumlah|Total  |');
  for index:= 1 to n do
  begin
         writeln('|',index,'   |',tanggal[index],'  |',nama[index],'    |',nbrg[index],' |','Rp',hrga[index],'     |',jumlah[index],'   |','Rp',hrga[index]*jumlah[index],'    |');
  end;
  //total
  writeln('Jumlah transaksi :', n);
  writeln('Jumlah Penjualan :',totall);
end;

begin
  input_data;
  writeln;
  output_data;
  readln;
end.

