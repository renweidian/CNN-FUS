function   x    =   H_z(z, fft_B, sf, sz,s0)
[ch, n]         =    size(z);



    x           =    zeros(ch, floor(n/(sf^2)));    
    for  i  = 1 : ch
        Hz         =    real( ifft2(fft2( reshape(z(i,:), sz) ).*fft_B) );
        t          =    Hz(s0:sf:end, s0:sf:end);
        x(i,:)     =    (t(:))';
    end
end


