function data=comb4D(Cube,d,s)

a=s(1);
b=s(2);
c=s(3);
data=zeros(a,b,c,s(4));%
n=0;

    
for x=1:a-d+1

    for y=1:b-d+1

        for z=1:c-d+1

            n=n+1;
            
            for w=1:s(4)
                
                t=Cube((w-1)*(d*d*d)+1:w*(d*d*d),n);
                data(x:x+d-1,y:y+d-1,z:z+d-1,w)=reshape(t(:),d,d,d);
                
            end
            
        end

    end

end
