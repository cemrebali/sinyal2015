function[x,t]=note(genlik,frekans,vurus) % Verilen 3 de�ere g�re sin�s sinyali olu�turur.
t=0:1/100:vurus;
x=genlik*sin(2*pi*frekans*t) % Girilen bilgi ��k���nda sin�s sinyali d�nd�r�ld�.