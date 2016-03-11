all:
	cd compiled ; \
	emcc -O3 -Wall ../rfft2.c ../kissfft/kiss_fftr.c ../kissfft/kiss_fftnd.c \
		 ../kissfft/kiss_fftndr.c ../kissfft/kiss_fft.c -I ../kissfft \
		 -s EXPORTED_FUNCTIONS="['_rfft2d', '_irfft2d']"
