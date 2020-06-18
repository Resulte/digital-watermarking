%PSNR.m
function S=PSNR(I,J)
% PSNR(I,J) returns the peak signal to noise ratio) between I and J %(dB)
% I is the original image and J is a modified version of I. 
% The PSNR value is useful to calculate the distortions on an image.

% if (size(I)~=size(J))
%    error('Las imagenes deben tener el mismo tamaño')
% end
% if (~isrgb(I) & ~isrgb(J))
   [m n] = size(I);
   A=double(I);
   B=double(J);
   sumaDif=0;
   maxI=m*n*max(max(A.^2));
   for u=1:m
      for v=1:n
         sumaDif = sumaDif + (A(u,v)-B(u,v))^2;
      end
   end
   if (sumaDif==0) 
      sumaDif=1;
   end
   S=maxI/sumaDif;
   S=10*log10(S);	
% else 
%    error('Las imagenes no pueden ser en color')
% end
