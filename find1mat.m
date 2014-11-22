function a= find1mat(a)
[m,n,l]=size(a);
a=uint16(a);
c=0;
for i=1:m
    for j=1:n
        avg=(a(i,j,1)+a(i,j,2)+a(i,j,3))/3;
        
        if(abs(a(i,j,2)-a(i,j,3))>2 && abs(a(i,j,2)-a(i,j,1))>2 )
            if(abs(a(i,j,1)-a(i,j,3))<5 )
           % if(abs(a(i,j,1)-a(i,j,3))<5 && a(i,j,1)>150 && a(i,j,3)>150)
           %     a(i,j,1)=255;
            %a(i,j,2)=255;
            %a(i,j,3)=255;
           % else
            c=c+1;
            %end
            else
                if((a(i,j,1)-a(i,j,3))>0)
                else
                 a(i,j,1)=255;
            a(i,j,2)=255;
            a(i,j,3)=255;
                end
            end
        else
            a(i,j,1)=255;
            a(i,j,2)=255;
            a(i,j,3)=255;
        end
    end
end
a=uint8(a);
end
