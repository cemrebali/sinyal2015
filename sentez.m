[nota,b,c]=textread('notalar.txt','%s %s %s'); %Notalar.txt dosyas� okutuldu. Okunan her s�tun bir de�ere atand�. 
fs=8192;%�rnekleme say�s� de�i�kene atand�.
ds=round(fs/100); %durma s�resi hesapland�
go=round(fs/10); %gecikme s�resi hesapland�
notalar=zeros(1,fs); %�rnekleme s�resi kadar s�f�rdan olusan bir dizi olu�turuldu
a=zeros(1,length(notalar)); %notalar matrisi boyutlar�nda s�f�rdan olusan bir dizi olusturuldu
durak=zeros(1,ds); %durma s�resi boyutunda s�f�rdan olusan bir dizi olusturuldu
oktav=str2num(cell2mat(b)); %dosyadan cell olarak okunan degiskenler double degere d?�n��t�r�ld�.
   for i=1:(length(nota)) %nota dizisi boyu kadar d�ng� oluturuldu
       vurus((i),1)=str2num(cell2mat(c(i,1))); %dosyadan cell olarak okunan degi�kenler double degere d�n��t�r�ld�
       frekans((i),1)=frek(nota((i),1),oktav((i),1)); %ge�en hafta olu�turulan frek fonksiyonu �a��r�ld�
       [x,t]=note(frekans((i),1),vurus((i),1)); %ge�en hafta olu�turdu�umuz note fonksiyonu �a�r�ld�
       notalar=[notalar durak x]; %note fonsiyonunun d?nd?rd??? sinyal de?eri aralar?na daha ?nce olu?turulmu durak dizisi de yerle?tirilerek birle?tirildi
   end %for sonu
 notalarecho=zeros(1,(length(notalar))); %notalar matrisi boyutlar?nda s?f?rdan olusan bir dizi olu?turuldu
 for i=1:(length(notalar)) %notalar dizisi boyu kadar d?ng? ol?turuldu
     f=(go+i); %echo olu?turmak i?in gerekli olan gecikme s?resi d?ng?ye sokuldu
     if f<(length(notalar)) %gecikme s?resi notalar matrisinin boyutunu ge?mesin diye ?art sa?land?
     notalarecho(i)=notalar(i)*0.3+notalar(f); %de�erlerin y�zde 30 u al�narak gecikme s�resi hesapland�
     else 
      notalarecho(i)=notalar(i)*0.3+0; 
     end
 end 
  normalizenotalarecho=zeros(1,(length(notalar)));%normalizasyon de�i�keni tan�mland�.
  normalizenotalarecho=notalarecho/max(abs(notalarecho));%sinyalin tepe de?erleri 1'e normalize edilmi?tir.
sound(normalizenotalarecho) %sinyal d�nd�r�ld�
