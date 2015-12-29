function [frekans]=frek(nota,oktav,oktavdegeri)%frekans d?nd?rmektedir.

notalar={'Do','Dod','Re','Mib','Mi','Fa','Fad','Sol','Sold','La','Sib','Si','Sus'}; %notolar diziye atand�
n=strcmp(notalar,nota); 
m=find(n,1);% n dizisinde 1 degerinin indeksini d�nd�r�r.
        if (nargin==0) %fonksiyona hi� de�er g�nderilmemesi durumunda
                 disp ('veri girisi yapiniz');
        elseif (nargin==1)%tek de�er g�nderilmi� ise
                 if (m==13)%g�derilen de�er sus u de�ilmi onu kontrol eder.
                    frekans=0;%e�er sus de�eri ise frekan 0 d�nd�r.
                else %degilse
                    frekans=16.35*(2^(4))*(2^((m-1)/12));
                end%sus notas? kontrol i?lemini bitirir
        elseif (nargin==2) %iki de�er g�nderilmi� ise
                 if (m==13)%g�derilen de�er sus u de�ilmi onu kontrol eder.
                    frekans=0;%e�er sus de�eri ise frekan 0 d�nd�r.
                 else%degilse
                    frekans=16.35*(2^(oktav))*(2^((m-1)/12)); %oktava g�re frekans olu�turuldu
                 end
        else %2 den fazla de�er g�nderilmi� ise
                 if (m==13)%g�derilen de�er sus u de�ilmi onu kontrol eder.
                     frekans=0;%e�er sus de�eri ise frekan 0 d�nd�r.
                 else%degilse
                     frekans=16.35*(2^(oktav+oktavdegeri))*(2^((m-1)/12)); %g�nderilen nota ve oktava g�re frekans hesaplamas� yapar.
                 end
    end

end 
   