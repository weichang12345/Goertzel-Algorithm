
Goertzel Algorithm
------------------------------------------------------------------------------------------------------------

Syntax

	Fx = Goertzel_Algorithm(x)

------------------------------------------------------------------------------------------------------------

Description

	This function computes the discrete Fourier transform of the input x by means of the Goertzel algorithm.
	The algorithm is based on a recusive relationship y[n] = e^(-j*2*pi*m)*y[n-1]+z[n] with z[n]=x[N-n], and the output X[m]=y[N].
	
	The output is the encoded sequence, its size depends on the size of the input data.

------------------------------------------------------------------------------------------------------------

	For more details and examples, see also demo.mlx. 
