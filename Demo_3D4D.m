%% This is a simple demo program on how to use ACVA to denoise 3D or 4D images

ima = 100*ones(50,50,50);%%input: scaled to (0 , 255)
level = 30;%
randn('seed',0);

rima = ima+randn(size(ima))*level;
% 
tic
    wid = 30;
    step = 25;
    RES=ACVA_3D4D(rima,wid,step,level);
    % % if noise level is unknown :
    % RES=ACVA_3D4D(rima,wid,step);
yt=toc;

r_PSNR = psnr(ima,RES,255)
