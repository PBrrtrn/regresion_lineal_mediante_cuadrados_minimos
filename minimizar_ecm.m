disp("Running...")
clear;

puntos_horarios = [1.19,7.19,13.57,20.12,26.0,32.11,39.04,45.02,50.17,56.57,63.41,69.46,74.4,81.38,88.0,94.23,99.09,106.15,112.2,118.57,123.43,130.5,136.48,143.3,148.2,155.26,161.21,144.02,173.0,180.03,185.58,168.34,197.41,204.44,210.38,193.09,222.26,229.29,235.21,217.47,247.13,254.19,260.07,242.29,272.05,279.15,284.55,267.19,297.01,304.18,309.48,292.16,322.05,329.27,334.46,317.22,347.16,354.38,359.5,342.32,372.36,379.46,360.58,367.4,397.58,404.49,386.04,392.44,423.13,429.45,411.05,417.44,448.19,454.36,436.01,442.41,473.16,479.24,460.52,467.35,498.08,480.09,485.4,492.28,522.55,504.53,510.27,517.2,547.4,529.37,535.14,542.12,572.23,554.21,560.01,567.04,597.03,579.07,584.5,591.59,621.4,603.55,609.4,616.54,646.16,628.46,634.35,641.51,670.52,653.4,659.35,666.47,695.31,678.34,684.38,691.38,696.14,703.25,709.31,716.24,720.59,728.11,734.1,741.04,745.43,752.54,758.47,765.4,770.26,777.35,783.24,790.14,795.08,802.15,808.03,814.47,819.51,826.56,832.44,839.21,844.36,851.4,857.26,863.56,869.21,876.26,882.09,864.34,894.09,901.16,906.55,889.15,919.0,926.11,931.42,914.01,943.55,951.1,956.32,938.55,968.55,976.13,981.26,963.56,994.0,1001.2,1006.25,989.04,1019.14,1026.27,1031.3,1014.14,1044.33,1051.3,1032.4,1039.23,1069.52,1076.28,1057.48,1064.28,1095.04,1101.21,1082.5,1089.29,1120.05,1126.1,1107.47,1114.27,1144.59,1150.57,1132.39,1139.22,1169.48,1175.41,1157.29,1164.15,1194.32,1176.24,1182.16,1189.06,1219.12,1201.06,1207.03,1213.57,1243.47,1225.49,1231.47,1238.47,1268.18,1250.33,1256.31,1263.37,1292.44,1275.18,1281.13,1288.28,1317.12,1300.04,1305.55,1313.18,1341.44,1324.52,1330.38,1338.07,1366.24,1349.42,1355.23,1362.52,1391.11,1374.32,1380.11,1387.35,1392.02,1399.2,1405.0,1412.15];
puntos_marea = [00.97,00.64,01.11,00.66,00.96,00.62,01.12,00.68,00.96,00.59,01.13,00.68,00.98,00.56,01.14,00.68,01.02,00.52,01.17,00.67,01.07,00.48,01.21,00.66,01.13,00.43,01.24,00.64,01.19,00.39,01.26,00.63,01.25,00.35,01.27,00.62,01.30,00.34,01.26,00.61,01.34,00.34,01.22,00.60,01.36,00.37,01.17,00.59,01.36,00.41,01.12,00.58,01.35,00.45,01.08,00.55,01.34,00.48,01.05,00.50,01.34,00.50,01.05,00.43,01.36,00.50,01.08,00.35,01.38,00.50,01.13,00.27,01.39,00.50,01.19,00.22,01.38,00.50,01.24,00.19,01.35,00.51,01.28,00.20,01.29,00.52,01.30,00.23,01.22,00.54,01.30,00.30,01.14,00.56,01.28,00.38,01.06,00.58,01.24,00.46,00.99,00.60,01.19,00.54,00.94,00.62,01.14,00.60,00.91,00.63,01.10,00.64,00.89,00.63,01.08,00.66,00.90,00.62,01.07,00.67,00.92,00.59,01.09,00.66,00.96,00.55,01.11,00.64,01.01,00.50,01.15,00.62,01.08,00.45,01.18,00.60,01.15,00.39,01.20,00.58,01.23,00.35,01.21,00.55,01.30,00.32,01.20,00.53,01.35,00.31,01.17,00.51,01.39,00.33,01.13,00.50,01.40,00.37,01.08,00.48,01.40,00.41,01.04,00.47,01.38,00.45,01.01,00.44,01.35,00.48,01.00,00.40,01.33,00.49,01.03,00.35,01.33,00.49,01.07,00.29,01.32,00.49,01.14,00.24,01.30,00.48,01.20,00.22,01.27,00.47,01.26,00.22,01.21,00.47,01.29,00.24,01.15,00.47,01.30,00.29,01.08,00.48,01.29,00.36,01.01,00.50,01.26,00.44,00.96,00.52,01.21,00.51,00.91,00.55,01.16,00.57,00.88,00.58,01.12,00.61,00.87,00.59,01.09,00.64,00.87,00.60,01.07,00.65,00.89,00.59,01.07,00.65,00.92,00.56,01.08,00.63];

semilla = [0.77690,1.46284,-1.47580,12.975,13];
n = 236;

function res = minimizar_gradiente(x0, t, y)
  n = size(t)(2);
  sum_y = sum(y);
  x_ant = 0;
  x_act = x0';
  while (abs(max(x_act) - max(x_ant)) > 0.0000001)
    x_ant = x_act;
    x_act = x_ant - jacobiano_invertido(x_ant, t, sum_y, n)*gradiente(x_ant, t, sum_y, n);
  endwhile
  res = x_act;
endfunction

function grad = gradiente(xk, t, sum_y, n)
  h0 = xk(1);
  a1 = xk(2);
  a2 = xk(3);
  p1 = xk(4);
  p2 = xk(5);
  
  senos_p1 = suma_senos(p1,t);
  senos_p2 = suma_senos(p2,t);
  cosenos_p1 = suma_cosenos(p1,t);
  cosenos_p2 = suma_cosenos(p2,t);
  
  senos_p1_d = suma_senos_d(p1,t);
  senos_p2_d = suma_senos_d(p2,t);
  cosenos_p1_d = suma_cosenos_d(p1,t);
  cosenos_p2_d = suma_cosenos_d(p2,t);
  
  senos_p1_d2 = suma_senos_d2(p1,t);
  senos_p2_d2 = suma_senos_d2(p2,t);
  cosenos_p1_d2 = suma_cosenos_d2(p1,t);
  cosenos_p2_d2 = suma_cosenos_d2(p2,t);
  
  f1 = 2*(n*h0+a1*senos_p1+a2*cosenos_p2 - sum_y)*n;
  f2 = 2*(n*h0+a1*senos_p1+a2*cosenos_p2 - sum_y)*senos_p1;
  f3 = 2*(n*h0+a1*senos_p1+a2*cosenos_p2 - sum_y)*cosenos_p2;
  f4 = 2*(n*h0+a1*senos_p1+a2*cosenos_p2 - sum_y)*(-2*a1*pi*cosenos_p1_d/p1^2);
  f5 = 2*(n*h0+a1*senos_p1+a2*cosenos_p2 - sum_y)*(2*a1*pi*senos_p2_d/p2^2);
  
  grad = [f1; f2; f3; f4; f5];
endfunction

function j_inv = jacobiano_invertido(xk,t, sum_y, n)
  h0 = xk(1);
  a1 = xk(2);
  a2 = xk(3);
  p1 = xk(4);
  p2 = xk(5);
  
  senos_p1 = suma_senos(p1,t);
  senos_p2 = suma_senos(p2,t);
  cosenos_p1 = suma_cosenos(p1,t);
  cosenos_p2 = suma_cosenos(p2,t);
  
  senos_p1_d = suma_senos_d(p1,t);
  senos_p2_d = suma_senos_d(p2,t);
  cosenos_p1_d = suma_cosenos_d(p1,t);
  cosenos_p2_d = suma_cosenos_d(p2,t);
  
  senos_p1_d2 = suma_senos_d2(p1,t);
  senos_p2_d2 = suma_senos_d2(p2,t);
  cosenos_p1_d2 = suma_cosenos_d2(p1,t);
  cosenos_p2_d2 = suma_cosenos_d2(p2,t);
  
  H = h0 + a1*senos_p1 + a2*cosenos_p2 - sum_y;
  
  df1_dh0 = 2*(n^2);
  df1_da1 = 2*n*senos_p1;
  df1_da2 = 2*n*cosenos_p2;
  df1_dp1 = (-4*a1*pi*n*cosenos_p1_d )/(p1^2);
  df1_dp2 = (4*a2*pi*n*cosenos_p2_d )/(p2^2);
  
  df2_dh0 = 2*n*senos_p1;
  df2_da1 = 2*(senos_p1^2);
  df2_da2 = 2*cosenos_p2*senos_p1;
  df2_dp1 = (-4*a1*pi*cosenos_p1_d*senos_p1 + 2*(H*cosenos_p1_d*-2*pi)/(p1^2) );
  df2_dp2 = (a2*2*pi*senos_p2_d)/(p2^2);
  
  df3_dh0 = 2*n*cosenos_p2;
  df3_da1 = 2*senos_p1*cosenos_p2;
  df3_da2 = 2*(cosenos_p2^2);
  df3_dp1 = (-2*a1*pi*cosenos_p1_d)/(p1^2);
  df3_dp2 = (4*a2*pi*senos_p2_d*cosenos_p2 + 4*H*pi*cosenos_p2)/(p2^2);
  
  df4_dh0 = (2*n*-2*a1*pi*cosenos_p1_d)/(p1^2);
  df4_da1 = (-4*senos_p1*a1*pi*cosenos_p1_d + pi*-4*H*cosenos_p1_d )/(p1^2);
  df4_da2 = (-4*cosenos_p2*a1*pi*cosenos_p1_d)/(p1^2);
  df4_dp1 = ((8*((a1*pi)^2)*(cosenos_p1_d^2) ) / (p1^4) ) + 2*a1*H* ( ((-4*(pi^2)*senos_p1_d2)/(p1^4) ) - (pi*cosenos_p1_d)/(p1) );
  df4_dp2 = (-8*(pi^2)*a2*a1*senos_p2_d*cosenos_p1_d )/( (p1^2)*(p2^2) );
  
  df5_dh0 = 2*n*(2*a2*pi*senos_p2_d/(p2^2) );
  df5_da1 = (4*senos_p1*a2*pi*senos_p2_d ) / (p2^2);
  df5_da2 = (4*a2*pi*cosenos_p2*senos_p2_d + 4*pi*H*senos_p2_d ) / (p2^2);
  df5_dp1 = (-8*a1*a2*(pi^2)*cosenos_p1_d*senos_p2_d)/((p1^2)*(p2^2));
  df5_dp2 = ((8*((a2*pi)^2)*(senos_p2^2))/(p2^4) ) + 2*H* ( ((-4*a2*(pi^2)*cosenos_p2_d2)/(p2^4) ) +  (a2*pi*senos_p2_d/p2));
  
  j = [df1_dh0, df1_da1, df1_da2, df1_dp1, df1_dp2; df2_dh0, df2_da1, df2_da2, df2_dp1, df2_dp2; df3_dh0, df3_da1, df3_da2, df3_dp1, df3_dp2; df4_dh0, df4_da1, df4_da2, df4_dp1, df4_dp2; df5_dh0, df5_da1, df5_da2, df5_dp1, df5_dp2];
  j_inv = inv(j);
endfunction

function resultado = suma_senos(p,t)
  v = sin(2.*pi.*t./p);
  resultado = sum(v);
endfunction

function resultado = suma_cosenos(p,t)
  v = cos(2.*pi.*t./p);
  resultado = sum(v);
endfunction

function resultado = suma_senos_d(p,t)
  v = (sin(2.*pi.*t./p).*t);
  resultado = sum(v);
endfunction

function resultado = suma_cosenos_d(p,t)
  v = (cos(2.*pi.*t./p).*t);
  resultado = sum(v);
endfunction

function resultado = suma_senos_d2(p,t)
  v = (sin(2.*pi.*t./p).*(t.^2));
  resultado = sum(v);
endfunction

function resultado = suma_cosenos_d2(p,t)
  v = (cos(2.*pi.*t./p).*(t.^2));
  resultado = sum(v);
endfunction

function ECM = calcular_ECM(x, y, parametros)
  ECM = 0;
  for i = 1:size(y');
    ECM_i = (y(i) - aproximar_y(x, i, parametros) )^2;
    ECM = ECM + ECM_i;
  endfor
  ECM = ECM/236;
  ECM = sqrt(ECM);
endfunction

function y = aproximar_y(x, i, parametros)
  h0 = parametros(1);
  a1 = parametros(2);
  a2 = parametros(3);
  p1 = parametros(4);
  p2 = parametros(5);
  y = h0 + a1*sin(2*pi*x(i)/p1) + a2*cos(2*pi*x(i)/p2);
endfunction

function pleamar = predecir_pleamar(parametros, horarios)
  h0 = parametros(1);
  a1 = parametros(2);
  a2 = parametros(3);
  p1 = parametros(4);
  p2 = parametros(5);
  t = construir_horarios(horarios(length(horarios)));
  alturas = h0.+a1.*sin(2.*pi.*t./p1).+a2.*cos(2.*pi.*t./p2);
  
  i = 1;
  h_act = alturas(i);
  h_sig = alturas(i+1);
  while (h_sig > h_act)
    i = i+1;
    h_act = alturas(i);
    h_sig = alturas(i+1);
  endwhile

  pleamar = [t(i), h_act];
endfunction

function horarios = construir_horarios(ultima_hora)
  n = 30*4
  horarios = ones(n,1);
  for i = 1:n
    horarios(i) = ultima_hora + 4*i;
  endfor
endfunction

function graficar(t, h, parametros)
  h0 = parametros(1);
  a1 = parametros(2);
  a2 = parametros(3);
  p1 = parametros(4);
  p2 = parametros(5);
  
  proyecciones = h0.+a1.*sin(2.*pi.*t./p1).+a2.*cos(2.*pi.*t./p2);
  plot(t, h, 'x', t, proyecciones, '*')
  
endfunction

res = minimizar_gradiente(semilla, puntos_horarios, puntos_marea)
ECM = calcular_ECM(puntos_horarios, puntos_marea, res)
pleamar = predecir_pleamar(res, puntos_horarios)
graficar(puntos_horarios, puntos_marea, res)

