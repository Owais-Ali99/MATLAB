function A = gaussianelimination(A)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%   OWAIS ALI. University of Sindh, Pakistan   %%%%%%
%%%%%%   Email: owaisshoukat99@gmail.com            %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[a, b] = size(A);
n = min([a, b]);

for i = 1:n
    if A(i,i) ~= 0
    A(i,:) = A(i,:)/A(i,i);
for j = (i+1):a
    A(j,:) = A(j,:)-A(j,i)*A(i,:);
end
    end
end

end
