function y=coeff_gen(sigma,N)
    tt=zeros(N,1);
    if isempty(sigma)
        disp('the parameter is empty,please input it');
    end
    
    for x=-(N-1)/2:1:(N-1)/2
        tt(x+(N+1)/2)=exp(-1*x*x/(2*sigma*sigma));    
    end
    ts=sum(abs(tt));
    
    for i=1:1:N
        y(i)=round(256*tt(i)/ts+0.5);
    end
end
