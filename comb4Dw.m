function [data, data0, w0]=comb4Dw(Cube,d,s)
if length(s)==3
   s(4)=1; 
end
a=s(1);
b=s(2);
c=s(3);
data0=zeros(a,b,c,s(4));%(d^3,(a-d+1)*(b-d+1)*(c-d+1));
w0=zeros(a,b,c,s(4));%
n=0;

    
for x=1:a-d+1

    for y=1:b-d+1

        for z=1:c-d+1

            n=n+1;
            
            for w=1:s(4)
                
                t=Cube((w-1)*(d*d*d)+1:w*(d*d*d),n);
                data0(x:x+d-1,y:y+d-1,z:z+d-1,w)=data0(x:x+d-1,y:y+d-1,z:z+d-1,w)+reshape(t(:),d,d,d);
                w0(x:x+d-1,y:y+d-1,z:z+d-1,w)= w0(x:x+d-1,y:y+d-1,z:z+d-1,w)+1;
                
            end
            
        end

    end

end
data=data0./w0;
