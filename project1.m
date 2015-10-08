%% Unnormalized Butterworth Filter 
%6th order normalized butterworth filter 
%T_n(s)=1/(s^2+.5176s+1)*(s^2+1.4141s+1)(s^2+1.9319s+1) 
w=0:1/150:3;
scale=1/.3462; 
t=1./(((j*w*scale)+1).*(((j*w*scale).^2)+(.4450*j.*w*scale)+1).*...
  (((j*w*scale).^2)+(1.2470*j.*w*scale)+1).*(((j*w*scale).^2)+...
  (1.8019*j.*w*scale)+1));  
figure(1); 
plot(w,20*log10(abs(t))); 
xmin=0;xmax=1;ymin=-40;ymax=0; 
xlim([xmin xmax]);ylim([ymin ymax]); 
hold on; 
plot([.3462 .3462],[ymax ymin], [.5463 .5463],[ymax ymin],...
    [xmin xmax],[-5 -5],[xmin xmax],[-25 -25]); 
title('Unnormalized Butterworth Filter')
%%
%6th order unnormalized butterworth filter 
%T_n(s)=1/(s^2+.5176s+1)*(s^2+1.4141s+1)(s^2+1.9319s+1) 
w=0:1/150:3;
t=1./(((j*w)+1).*(((j*w).^2)+(.4450*j.*w)+1).*...
  (((j*w).^2)+(1.2470*j.*w)+1).*(((j*w).^2)+...
  (1.8019*j.*w)+1));  
figure(2); 
plot(w,20*log10(abs(t))); 
xmin=0;xmax=3;ymin=-40;ymax=0; 
xlim([xmin xmax]);ylim([ymin ymax]); 
hold on; 
plot([1 1],[ymax ymin], [1.5777 1.5777],[ymax ymin],...
    [xmin xmax],[-5 -5],[xmin xmax],[-25 -25]); 
title('Normalized Butterworth Filter')
%% Bilinear Transform
w=0:1/150:3;
s=(1-(exp(j*w).^-1))./(1+(exp(j*w)).^-1); 
t=1./((s+1).*((s.^2)+(.4450*s)+1).*...
  ((s.^2)+(1.2470.*s)+1).*((s.^2)+...
  (1.8019.*s)+1));  
figure(3); 
plot(w,20*log10(abs(t))); 
xmin=0;xmax=3;ymin=-40;ymax=0; 
xlim([xmin xmax]);ylim([ymin ymax]); 
hold on; 
plot([1 1],[ymax ymin], [1.5777 1.5777],[ymax ymin],...
    [xmin xmax],[-5 -5],[xmin xmax],[-25 -25]); 
title('Bilinear Transformed Filter')
%% 
w=0:1/150:3;
scale=1/.252;
t=(1./(((j*w*scale).^2)+(1.4142*j.*w*scale)+1))-.95;
figure(3); 
plot(w,20*log10(abs(t))); 
xmin=0;xmax=1;ymin=-40;ymax=0; 
xlim([xmin xmax]);ylim([ymin ymax]); 
hold on; 
plot([.3462 .3462],[ymax ymin], [.5463 .5463],[ymax ymin],...
    [xmin xmax],[-5 -5],[xmin xmax],[-25 -25]); 
title('Unnormalized Butterworth Filter')
%% Band pass 
w=0:1/150:3;
z=((exp(j*w).^-2)-(((2*1.8519*.039)/(.039+1)).*exp(j*w).^-1)+((.039-1)/(.039+1)))...
    ./((((.039-1)/(.039+1))^-2)-(((2*1.8519*.039)/(.039+1)).*exp(j*w).^-1)+1);
s=(1-z.^1)./(1+z.^1); 
t=1./(((s)+1).*(((s).^2)+(s)+1).*...
  (((s).^2)+(1.2470*s)+1).*(((s).^2)+...
  (1.8019*s)+1));  
figure(4); 
plot(w,20*log10(abs(t))); 
xmin=0;xmax=3;ymin=-200;ymax=0; 
xlim([xmin xmax]);ylim([ymin ymax]); 
hold on; 
plot([1 1],[ymax ymin], [1.5777 1.5777],[ymax ymin],...
    [xmin xmax],[-5 -5],[xmin xmax],[-25 -25]); 
%%
w=0:1/150:10;
z=((exp(j*w).^-2)-(((2*1.8519)/(.04513+1)).*exp(j*w).^-1)+((1-.4513)/(.4513+1)))...
    ./((((1-.4513)/(.4513+1))^-2)-(((2*1.8519)/(.4513+1)).*exp(j*w).^-1)+1);
s=(1-z)./(1+z); 
t=1./(((s)+1).*(((s).^2)+(s)+1).*...
  (((s).^2)+(1.2470*s)+1).*(((s).^2)+...
  (1.8019*s)+1));  
figure(5); 
plot(w,20*log10(abs(t))); 
xmin=0;xmax=10;ymin=-200;ymax=0; 
xlim([xmin xmax]);ylim([ymin ymax]); 
hold on; 
plot([1 1],[ymax ymin], [1.5777 1.5777],[ymax ymin],...
    [xmin xmax],[-5 -5],[xmin xmax],[-25 -25]); 

%%comment
