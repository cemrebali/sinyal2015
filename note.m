function[x,t]=note(genlik,frekans,vurus) % Verilen 3 deðere göre sinüs sinyali oluþturur.
t=0:1/100:vurus;
x=genlik*sin(2*pi*frekans*t) % Girilen bilgi çýkýþýnda sinüs sinyali döndürüldü.