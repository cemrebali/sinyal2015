Cemre Nur Bali
030115217
Sinyal ��leme
Proje : MATLAB ile sentezleme
frek.m dosyas�nda notalar�n frenkans�n� d�nd�ren bir fonksiyon olu�turuldu.
note.m dosyas�nda verilen de�ere g�re sinus sinyalini d�nd�ren fonksiyon yaz�ld�. dosya da zarflama ger�ekle�tirildi.


Bir notan�n iki oktav aras�nda iki kat kadar fark vard�r. �rn: Do notas� 0. oktavda 16.35 iken 1. oktavda 32.70dir.
�ki nota aras�ndada olu�turdu�umuz fonksiyon kadar fark vard�r. (16.35*(2^oktav)*(2^((m-1)/12))) 

notalar dosyas�na �l��leriyle birlikte oktavlar� bulup ekledik.

Bu hafta �devde ses ��kard�k.
frek.m dosyas�: Girilen de�ere g�re ( notalar oktav) fonksiyonlar olu�turulup dosya d�zenlendi. Frekans al�nd�.
note.m dosyas�: Al�nan frekanslar note.m dosyas�na g�nderildi ve sinyal olu�turuldu. Ayn� zamandan harmonik hesaplanarak zarflama olay� yap�ld�.
Sentez.m dosyas�: notalar.txt dosyay� okundu. de�i�kenler tan�mlanarak d�ng�ler olu�turuldu. Ve fonksiyonlar �a��r�ld�. Zarflanm�� ve geri d�nd�r�len sinyale echo eklenerek normalize edilip �a��r�ld�.

