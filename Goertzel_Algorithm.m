function Fx = Goertzel_Algorithm(x)
% This function computes the discrete Fourier transform of the input x by
% means of the Goertzel algorithm. The algorithm is based on a recursive
% relationship y[n] = e^(-j*2*pi*m)*y[n-1]+z[n] with z[n]=x[N-n], and the
% output X[m]=y[N].

[row, col] = size(x);

% If x is a column vector
if(col == 1)
    x = flip(x);
    N =  numel(x);
    Fx = zeros(size(x));
    for i = 1 : N
        Fx = Fx.*exp(-1j*2*pi/N*(0:N-1).');
        Fx = Fx + x(i)*ones(size(x));
    end
% If x is a row vector
elseif(row == 1)
    x = flip(x);
    N =  numel(x);
    Fx = zeros(size(x));
    for i = 1 : N
        Fx = Fx.*exp(-1j*2*pi/N*(0:N-1));
        Fx = Fx + x(i)*ones(size(x));
    end
% If x is a matrix
else
    x = flipud(x);
    Fx = zeros(size(x));
    for j = 1 : col
        for i = 1 : row
            Fx(:,j) = Fx(:,j).*exp(-1j*2*pi/row*(0:row-1).');
            Fx(:,j) = Fx(:,j) + x(i,j)*ones(row, 1);
        end
    end
end


end