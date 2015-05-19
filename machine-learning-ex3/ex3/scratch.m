putenv ("http_proxy", "http://172.28.97.50:7070/"); 
putenv ("https_proxy", "http://172.28.97.50:7070/"); 

  X = [ones(20,1) (exp(1) * sin(1:1:20))' (exp(0.5) * cos(1:1:20))'];
  y = sin(X(:,1) + X(:,2)) > 0;
  Xm = [ -1 -1 ; -1 -2 ; -2 -1 ; -2 -2 ; ...
          1 1 ;  1 2 ;  2 1 ; 2 2 ; ...
         -1 1 ;  -1 2 ;  -2 1 ; -2 2 ; ...
          1 -1 ; 1 -2 ;  -2 -1 ; -2 -2 ];
  ym = [ 1 1 1 1 2 2 2 2 3 3 3 3 4 4 4 4 ]';
  t1 = sin(reshape(1:2:24, 4, 3));
  t2 = cos(reshape(1:2:40, 4, 5));
  [J, grad] = lrCostFunction([0.25 0.5 -0.5]', X, y, 0.1);
  
  disp(X);
  disp(J);
  disp(grad);