img=imread('2040.png');
size(img)
[ll,lh,hl,hh] = dwt2(img,'haar');

a=[];
%first condition gives 6 attributes
%for i=1, lh band
count=0;
for i=1:256
    for j=1:195
        if lh(i,j)==1
			count=count+1;
		end
	end
end
a(1)=count*100/(256*195);	

%for i=1, hl band
count=0;
for i=1:256
    for j=1:195
        if hl(i,j)==1 
			count=count+1;
		end
	end
end
a(2)=count*100/(256*195);

%for i=2, lh band
count=0;
for i=1:256
    for j=1:195
        if lh(i,j)==2
			count=count+1;
		end
	end
end
a(3)=count*100/(256*195);			


%for i=2, hl band
count=0;
for i=1:256
    for j=1:195
        if hl(i,j)==2
			count=count+1;
		end
	end
end
a(4)=count*100/(256*195);

%for i=3, lh band
count=0;
for i=1:256
    for j=1:195
        if lh(i,j)==3
			count=count+1;
		end
	end
end
a(5)=count*100/(256*195);

%for i=3, hl band
count=0;
for i=1:256
    for j=1:195
        if hl(i,j)==3
			count=count+1;
		end
	end
end
a(6)=count*100/(256*195);


%second condition gives 6 attributes
%for i=1,lh band
count=0;
for i=1:255
    for j=1:195
		if lh(i,j)==lh(i+1,j)==1
			count=count+1;
		end
	end
end
a(7)=count*100/(256*195);


%for i=1,hl band
count=0;
for i=1:256
    for j=1:194
		if hl(i,j)==hl(i,j+1)==1
			count=count+1;
		end
	end
end	
a(8)=count*100/(256*195);


%for i=2,lh band
count=0;
for i=1:255
    for j=1:195
		if lh(i,j)==lh(i+1,j)==2
			count=count+1;
		end
	end
end
a(9)=count*100/(256*195);


%for i=2,hl band
count=0;
for i=1:256
    for j=1:194
		if hl(i,j)==hl(i,j+1)==2
			count=count+1;
		end
	end
end
a(10)=count*100/(256*195);
	

%for i=3,lh band
count=0;
for i=1:255
    for j=1:195
		if lh(i,j)==lh(i+1,j)==3
			count=count+1;
		end
	end
end
a(11)=count*100/(256*195);


%for i=3,hl band
count=0;
for i=1:256
    for j=1:194
		if hl(i,j)==hl(i,j+1)==3
			count=count+1;
		end
	end
end	
a(12)=count*100/(256*195);


%third condition gives 6 attributes
%for i=1,lh band
count=0;
for i=2:255
    for j=1:195
		if lh(i-1,j)==lh(i,j)==lh(i+1,j)==1
			count=count+1;
		end
	end
end
a(13)=count*100/(256*195);


%for i=1,hl band
count=0;
for i=1:256
    for j=2:194
		if hl(i,j-1)==hl(i,j)==hl(i,j+1)==1
			count=count+1;
		end
	end
end	
a(14)=count*100/(256*195);


%for i=2,lh band
count=0;
for i=2:255
    for j=1:195
		if lh(i-1,j)==lh(i,j)==lh(i+1,j)==2
			count=count+1;
		end
	end
end
a(15)=count*100/(256*195);


%for i=2,hl band
count=0;
for i=1:256
    for j=2:194
		if hl(i,j-1)==hl(i,j)==hl(i,j+1)==2
			count=count+1;
		end
	end
end	
a(16)=count*100/(256*195);


%for i=3,lh band
count=0;
for i=2:255
    for j=1:195
		if lh(i-1,j)==lh(i,j)==lh(i+1,j)==3
			count=count+1;
		end
	end
end
a(17)=count*100/(256*195);


%for i=3,hl band
count=0;
for i=1:256
    for j=2:194
		if hl(i,j-1)==hl(i,j)==hl(i,j+1)==3
			count=count+1;
		end
	end
end	
a(18)=count*100/(256*195);



%apply dwt again on LL band


%band size 128*98
[ll2,lh2,hl2,hh2] = dwt2(ll,'haar');

%first condition gives 6 attributes
%for i=1, lh band
count=0;
for i=1:128
    for j=1:98
        if lh2(i,j)==1
			count=count+1;
		end
	end
end
a(19)=count*100/(128*98);	

%for i=1, hl band
count=0;
for i=1:128
    for j=1:98
        if hl2(i,j)==1 
			count=count+1;
		end
	end
end
a(20)=count*100/(128*98);

%for i=2, lh band
count=0;
for i=1:128
    for j=1:98
        if lh2(i,j)==2
			count=count+1;
		end
	end
end
a(21)=count*100/(128*98);			


%for i=2, hl band
count=0;
for i=1:128
    for j=1:98
        if hl2(i,j)==2
			count=count+1;
		end
	end
end
a(22)=count*100/(128*98);

%for i=3, lh band
count=0;
for i=1:128
    for j=1:98
        if lh2(i,j)==3
			count=count+1;
		end
	end
end
a(23)=count*100/(128*98);

%for i=3, hl band
count=0;
for i=1:128
    for j=1:98
        if hl2(i,j)==3
			count=count+1;
		end
	end
end
a(24)=count*100/(128*98);


%second condition gives 6 attributes
%for i=1,lh band
count=0;
for i=1:127
    for j=1:98
		if lh2(i,j)==lh2(i+1,j)==1
			count=count+1;
		end
	end
end
a(25)=count*100/(128*98);


%for i=1,hl band
count=0;
for i=1:128
    for j=1:97
		if hl2(i,j)==hl2(i,j+1)==1
			count=count+1;
		end
	end
end	
a(26)=count*100/(128*98);


%for i=2,lh band
count=0;
for i=1:127
    for j=1:98
		if lh2(i,j)==lh2(i+1,j)==2
			count=count+1;
		end
	end
end
a(27)=count*100/(128*98);


%for i=2,hl band
count=0;
for i=1:128
    for j=1:97
		if hl2(i,j)==hl2(i,j+1)==2
			count=count+1;
		end
	end
end
a(28)=count*100/(128*98);
	

%for i=3,lh band
count=0;
for i=1:127
    for j=1:98
		if lh2(i,j)==lh2(i+1,j)==3
			count=count+1;
		end
	end
end
a(29)=count*100/(128*98);


%for i=3,hl band
count=0;
for i=1:128
    for j=1:97
		if hl2(i,j)==hl2(i,j+1)==3
			count=count+1;
		end
	end
end	
a(30)=count*100/(128*98);


%third condition gives 6 attributes
%for i=1,lh band
count=0;
for i=2:127
    for j=1:98
		if lh2(i-1,j)==lh2(i,j)==lh2(i+1,j)==1
			count=count+1;
		end
	end
end
a(31)=count*100/(128*98);


%for i=1,hl band
count=0;
for i=1:128
    for j=2:97
		if hl2(i,j-1)==hl2(i,j)==hl2(i,j+1)==1
			count=count+1;
		end
	end
end	
a(32)=count*100/(128*98);


%for i=2,lh band
count=0;
for i=2:127
    for j=1:98
		if lh2(i-1,j)==lh2(i,j)==lh2(i+1,j)==2
			count=count+1;
		end
	end
end
a(33)=count*100/(128*98);


%for i=2,hl band
count=0;
for i=1:128
    for j=2:97
		if hl2(i,j-1)==hl2(i,j)==hl2(i,j+1)==2
			count=count+1;
		end
	end
end	
a(34)=count*100/(128*98);


%for i=3,lh band
count=0;
for i=2:127
    for j=1:98
		if lh2(i-1,j)==lh2(i,j)==lh2(i+1,j)==3
			count=count+1;
		end
	end
end
a(35)=count*100/(128*98);


%for i=3,hl band
count=0;
for i=1:128
    for j=2:97
		if hl2(i,j-1)==hl2(i,j)==hl2(i,j+1)==3
			count=count+1;
		end
	end
end	
a(36)=count*100/(128*98);

a











