%MatzJB 2015
%Gaussian filter from "Digital Image Processing"
%Written by Rafael C. Gonzalez and Richard E. Woods
%Chapter 4.9.6 "Homomophic filtering"

%gammal - low values
%gammah - high values
%D0     - size of the gaussian, affects more/less frequencies
%c      - as with D0, it affects the exponential in H. It is like a tug of war
%         between D0 and c, working in different ranges. D0 is a sharpness factor
%         for the big changes in the image whereas c is sharpening in a small range.

function H = Butterworth(I, gammaL, gammaH, D0, c)

[rows, cols]  = size(I);
H   = 0*I;
D02 = D0^2;

for u=1:rows
    for v=1:cols
        D(u,v) = sqrt( (u-rows/2.0)^2 + (v-cols/2.0)^2 );
        H(u,v) = (gammaH-gammaL)*(1 - exp(-c*(D(u,v)^2 / D02))) + gammaL;
    end
end


