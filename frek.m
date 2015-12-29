function [frekans]=frek(nota,oktav,oktavdegeri)%frekans d?nd?rmektedir.

notalar={'Do','Dod','Re','Mib','Mi','Fa','Fad','Sol','Sold','La','Sib','Si','Sus'}; %notolar diziye atandý
n=strcmp(notalar,nota); 
m=find(n,1);% n dizisinde 1 degerinin indeksini döndürür.
        if (nargin==0) %fonksiyona hiç deðer gönderilmemesi durumunda
                 disp ('veri girisi yapiniz');
        elseif (nargin==1)%tek deðer gönderilmiþ ise
                 if (m==13)%göderilen deðer sus u deðilmi onu kontrol eder.
                    frekans=0;%eðer sus deðeri ise frekan 0 döndür.
                else %degilse
                    frekans=16.35*(2^(4))*(2^((m-1)/12));
                end%sus notas? kontrol i?lemini bitirir
        elseif (nargin==2) %iki deðer gönderilmiþ ise
                 if (m==13)%göderilen deðer sus u deðilmi onu kontrol eder.
                    frekans=0;%eðer sus deðeri ise frekan 0 döndür.
                 else%degilse
                    frekans=16.35*(2^(oktav))*(2^((m-1)/12)); %oktava göre frekans oluþturuldu
                 end
        else %2 den fazla deðer gönderilmiþ ise
                 if (m==13)%göderilen deðer sus u deðilmi onu kontrol eder.
                     frekans=0;%eðer sus deðeri ise frekan 0 döndür.
                 else%degilse
                     frekans=16.35*(2^(oktav+oktavdegeri))*(2^((m-1)/12)); %gönderilen nota ve oktava göre frekans hesaplamasý yapar.
                 end
    end

end 
   