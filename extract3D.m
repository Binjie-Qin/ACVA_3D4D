function Cube=extract3D(data,d)

[a,b,c]=size(data);
Cube=zeros(d^3,(a-d+1)*(b-d+1)*(c-d+1));
n=0;
for x=1:a-d+1
    for y=1:b-d+1
        for z=1:c-d+1
            
            n=n+1;
            t=data(x:x+d-1,y:y+d-1,z:z+d-1);
            Cube(:,n)=t(:);
            
        end
        
    end
    
end
