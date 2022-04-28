function [Z,count] = HM(Z)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%   OWAIS ALI. University of Sindh, Pakistan   %%%%%%
%%%%%%   Email: owaisshoukat99@gmail.com            %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

f = @(z) z.^3 + 1;      % the function
f1 = @(z) 3*z.^2;       % first derivative of the function
f2 = @(z) 6*z;          % second derivative of the function

errthld = 1e-10;        % error threshold
count = 0;              % counter starts from 00
err = 1;                % to start, the error is chosen large enough

%%%%% The Computation Engine %%%%
while err > errthld & count <= 100
    Zn = Z - (2*f(Z).*f1(Z)) ./ (2*f1(Z).^2 - f(Z).*f2(Z));
    err = abs(Zn - Z);
    Z = Zn;
    count = count + 1;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

end