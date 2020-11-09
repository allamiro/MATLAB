%Computation of non-bonded interactions%
%Verlet list Generation based on verlet list algorithm for N

clc,clear
npart=input('Enter Number of Particles');
x=rand;
x=ones(npart)*x;
for i=1:npart 
    nlist(i)=0; % #initializing the Verlet lists
    xv(i)=10*rand; %# storing the positions of particles 
end

for i=1:npart-1    
    x(i)=x(i)*rand+1;   % Generate Randomized values 
    
    for j=i+1:npart
        x(j)=x(j)*rand+1;   % Generating list of randomized values
        xr(i)=x(i)-x(j);
        rv=xv(i)-xv(j);        
        if (abs(xr)<rv)                         % Determining if the particle j belongs to the verlet list of i and vice vers
            nlist(i)=nlist(i)+1;             %Advancing the counters in Verlet Lists
            nlist(j)=nlist(j)+1;
       list(i,nlist(i))=j;                   %Storing the particles i and j in respective 
       list(j,nlist(j))=i;                   %Verlet lists 
        end
    end
end
plot(xr)
hold on
stem(list)
grid on
