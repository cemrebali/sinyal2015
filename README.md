Cemre Nur Bali
030115217
Sinyal Ýþleme
Proje : MATLAB ile sentezleme
frek.m dosyasýnda notalarýn frenkansýný döndüren bir fonksiyon oluþturuldu.
note.m dosyasýnda verilen deðere göre sinus sinyalini döndüren fonksiyon yazýldý. dosya da zarflama gerçekleþtirildi.


Bir notanýn iki oktav arasýnda iki kat kadar fark vardýr. Örn: Do notasý 0. oktavda 16.35 iken 1. oktavda 32.70dir.
Ýki nota arasýndada oluþturduðumuz fonksiyon kadar fark vardýr. (16.35*(2^oktav)*(2^((m-1)/12))) 

notalar dosyasýna ölçüleriyle birlikte oktavlarý bulup ekledik.

Bu hafta ödevde ses çýkardýk.
frek.m dosyasý: Girilen deðere göre ( notalar oktav) fonksiyonlar oluþturulup dosya düzenlendi. Frekans alýndý.
note.m dosyasý: Alýnan frekanslar note.m dosyasýna gönderildi ve sinyal oluþturuldu. Ayný zamandan harmonik hesaplanarak zarflama olayý yapýldý.
Sentez.m dosyasý: notalar.txt dosyayý okundu. deðiþkenler tanýmlanarak döngüler oluþturuldu. Ve fonksiyonlar çaðýrýldý. Zarflanmýþ ve geri döndürülen sinyale echo eklenerek normalize edilip çaðýrýldý.

