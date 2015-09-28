function img_result = homomorphic_filter(img_original, gammal, gammah, D0, c)

[M, N]     = size(img_original);
img_result = log(1 + img_original);
img_result = fft2(img_result, 2*M, 2*N);
img_result = fftshift(img_result).*Gaussian(img_result, gammal, gammah, D0, c);
img_result = abs( ifft2(ifftshift(img_result)) );
img_result = exp(img_result) - 1;
img_result = img_result(1:M, 1:N);

