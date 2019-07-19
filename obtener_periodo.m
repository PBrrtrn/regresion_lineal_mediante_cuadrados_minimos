function obtener_periodo()
  t_entre_pleamares = []
  t_entre_bajamares = []
  puntos_horarios = [1.19,7.19,13.57,20.12,26.0,32.11,39.04,45.02,50.17,56.57,63.41,69.46,74.4,81.38,88.0,94.23,99.09,106.15,112.2,118.57,123.43,130.5,136.48,143.3,148.2,155.26,161.21,144.02,173.0,180.03,185.58,168.34,197.41,204.44,210.38,193.09,222.26,229.29,235.21,217.47,247.13,254.19,260.07,242.29,272.05,279.15,284.55,267.19,297.01,304.18,309.48,292.16,322.05,329.27,334.46,317.22,347.16,354.38,359.5,342.32,372.36,379.46,360.58,367.4,397.58,404.49,386.04,392.44,423.13,429.45,411.05,417.44,448.19,454.36,436.01,442.41,473.16,479.24,460.52,467.35,498.08,480.09,485.4,492.28,522.55,504.53,510.27,517.2,547.4,529.37,535.14,542.12,572.23,554.21,560.01,567.04,597.03,579.07,584.5,591.59,621.4,603.55,609.4,616.54,646.16,628.46,634.35,641.51,670.52,653.4,659.35,666.47,695.31,678.34,684.38,691.38,696.14,703.25,709.31,716.24,720.59,728.11,734.1,741.04,745.43,752.54,758.47,765.4,770.26,777.35,783.24,790.14,795.08,802.15,808.03,814.47,819.51,826.56,832.44,839.21,844.36,851.4,857.26,863.56,869.21,876.26,882.09,864.34,894.09,901.16,906.55,889.15,919.0,926.11,931.42,914.01,943.55,951.1,956.32,938.55,968.55,976.13,981.26,963.56,994.0,1001.2,1006.25,989.04,1019.14,1026.27,1031.3,1014.14,1044.33,1051.3,1032.4,1039.23,1069.52,1076.28,1057.48,1064.28,1095.04,1101.21,1082.5,1089.29,1120.05,1126.1,1107.47,1114.27,1144.59,1150.57,1132.39,1139.22,1169.48,1175.41,1157.29,1164.15,1194.32,1176.24,1182.16,1189.06,1219.12,1201.06,1207.03,1213.57,1243.47,1225.49,1231.47,1238.47,1268.18,1250.33,1256.31,1263.37,1292.44,1275.18,1281.13,1288.28,1317.12,1300.04,1305.55,1313.18,1341.44,1324.52,1330.38,1338.07,1366.24,1349.42,1355.23,1362.52,1391.11,1374.32,1380.11,1387.35,1392.02,1399.2,1405.0,1412.15];

  for i = 3:2:size(puntos_horarios)(2);
    tiempo = (puntos_horarios(i) - puntos_horarios(i-2));
    t_entre_pleamares = cat(t_entre_pleamares, [tiempo]);
  endfor

  mean(t_entre_pleamares)
endfunction

obtener_periodo