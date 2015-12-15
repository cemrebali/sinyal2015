function [frekans]=frek(nota,oktav) %Girilen nota ve oktava g�re frekans d�nd�r�l�yor.
notalar={'Do','C#','Re','Eb','Mi','Fa','F#','Sol','G#','La','Bb','Si'}; %Notalar�m�z bir dizi i�erisinde yaz�ld�.
n=strcmp(notalar,nota); %Fonksiyona g�nderdi�imiz notay� dizi i�erisinde arat�r ve budu�u indekse 1 atar
m=find(n,1);%n dizisinde 1 de�erinin indeksini d�nd�r�r.
frekans=floor(16.35*(2^oktav)*(2^((m-1)/12))); % Frekans fonksiyonu olu�turuldu.