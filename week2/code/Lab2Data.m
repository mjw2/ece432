%% Lab 2 Data
close all;
clc;
clear;

%% ID vs. VDS Curve
Vdrain=[0 50.0*10^-3 100.0*10^-3 150.0*10^-3 200.0*10^-3 250.0*10^-3 300.0*10^-3 350.0*10^-3 400.0*10^-3 450.0*10^-3 500.0*10^-3 550.0*10^-3 600.0*10^-3 650.0*10^-3 700.0*10^-3 750.0*10^-3 800.0*10^-3 850.0*10^-3 900.0*10^-3 950.0*10^-3 1.0000 1.0500 1.1000 1.1500 1.2000 1.2500 1.3000 1.3500 1.4000 1.4500 1.5000 1.5500 1.6000 1.6500 1.7000 1.7500 1.8000 1.8500 1.9000 1.9500 2.0000 2.0500 2.1000 2.1500 2.2000 2.2500 2.3000 2.3500 2.4000 2.4500 2.5000 2.5500 2.6000 2.6500 2.7000 2.7500 2.8000 2.8500 2.9000 2.9500 3.0000 3.0500 3.1000 3.1500 3.2000 3.2500 3.3000 3.3500 3.4000 3.4500 3.5000 3.5500 3.6000 3.6500 3.7000 3.7500 3.8000 3.8500 3.9000 3.9500 4.0000 0 50.0*10^-3 100.0*10^-3 150.0*10^-3 200.0*10^-3 250.0*10^-3 300.0*10^-3 350.0*10^-3 400.0*10^-3 450.0*10^-3 500.0*10^-3 550.0*10^-3 600.0*10^-3 650.0*10^-3 700.0*10^-3 750.0*10^-3 800.0*10^-3 850.0*10^-3 900.0*10^-3 950.0*10^-3 1.0000 1.0500 1.1000 1.1500 1.2000 1.2500 1.3000 1.3500 1.4000 1.4500 1.5000 1.5500 1.6000 1.6500 1.7000 1.7500 1.8000 1.8500 1.9000 1.9500 2.0000 2.0500 2.1000 2.1500 2.2000 2.2500 2.3000 2.3500 2.4000 2.4500 2.5000 2.5500 2.6000 2.6500 2.7000 2.7500 2.8000 2.8500 2.9000 2.9500 3.0000 3.0500 3.1000 3.1500 3.2000 3.2500 3.3000 3.3500 3.4000 3.4500 3.5000 3.5500 3.6000 3.6500 3.7000 3.7500 3.8000 3.8500 3.9000 3.9500 4.0000 0 50.0*10^-3 100.0*10^-3 150.0*10^-3 200.0*10^-3 250.0*10^-3 300.0*10^-3 350.0*10^-3 400.0*10^-3 450.0*10^-3 500.0*10^-3 550.0*10^-3 600.0*10^-3 650.0*10^-3 700.0*10^-3 750.0*10^-3 800.0*10^-3 850.0*10^-3 900.0*10^-3 950.0*10^-3 1.0000 1.0500 1.1000 1.1500 1.2000 1.2500 1.3000 1.3500 1.4000 1.4500 1.5000 1.5500 1.6000 1.6500 1.7000 1.7500 1.8000 1.8500 1.9000 1.9500 2.0000 2.0500 2.1000 2.1500 2.2000 2.2500 2.3000 2.3500 2.4000 2.4500 2.5000 2.5500 2.6000 2.6500 2.7000 2.7500 2.8000 2.8500 2.9000 2.9500 3.0000 3.0500 3.1000 3.1500 3.2000 3.2500 3.3000 3.3500 3.4000 3.4500 3.5000 3.5500 3.6000 3.6500 3.7000 3.7500 3.8000 3.8500 3.9000 3.9500 4.0000 0 50.0*10^-3 100.0*10^-3 150.0*10^-3 200.0*10^-3 250.0*10^-3 300.0*10^-3 350.0*10^-3 400.0*10^-3 450.0*10^-3 500.0*10^-3 550.0*10^-3 600.0*10^-3 650.0*10^-3 700.0*10^-3 750.0*10^-3 800.0*10^-3 850.0*10^-3 900.0*10^-3 950.0*10^-3 1.0000 1.0500 1.1000 1.1500 1.2000 1.2500 1.3000 1.3500 1.4000 1.4500 1.5000 1.5500 1.6000 1.6500 1.7000 1.7500 1.8000 1.8500 1.9000 1.9500 2.0000 2.0500 2.1000 2.1500 2.2000 2.2500 2.3000 2.3500 2.4000 2.4500 2.5000 2.5500 2.6000 2.6500 2.7000 2.7500 2.8000 2.8500 2.9000 2.9500 3.0000 3.0500 3.1000 3.1500 3.2000 3.2500 3.3000 3.3500 3.4000 3.4500 3.5000 3.5500 3.6000 3.6500 3.7000 3.7500 3.8000 3.8500 3.9000 3.9500 4.0000 0 50.0*10^-3 100.0*10^-3 150.0*10^-3 200.0*10^-3 250.0*10^-3 300.0*10^-3 350.0*10^-3 400.0*10^-3 450.0*10^-3 500.0*10^-3 550.0*10^-3 600.0*10^-3 650.0*10^-3 700.0*10^-3 750.0*10^-3 800.0*10^-3 850.0*10^-3 900.0*10^-3 950.0*10^-3 1.0000 1.0500 1.1000 1.1500 1.2000 1.2500 1.3000 1.3500 1.4000 1.4500 1.5000 1.5500 1.6000 1.6500 1.7000 1.7500 1.8000 1.8500 1.9000 1.9500 2.0000 2.0500 2.1000 2.1500 2.2000 2.2500 2.3000 2.3500 2.4000 2.4500 2.5000 2.5500 2.6000 2.6500 2.7000 2.7500 2.8000 2.8500 2.9000 2.9500 3.0000 3.0500 3.1000 3.1500 3.2000 3.2500 3.3000 3.3500 3.4000 3.4500 3.5000 3.5500 3.6000 3.6500 3.7000 3.7500 3.8000 3.8500 3.9000 3.9500 4.0000 0 50.0*10^-3 100.0*10^-3 150.0*10^-3 200.0*10^-3 250.0*10^-3 300.0*10^-3 350.0*10^-3 400.0*10^-3 450.0*10^-3 500.0*10^-3 550.0*10^-3 600.0*10^-3 650.0*10^-3 700.0*10^-3 750.0*10^-3 800.0*10^-3 850.0*10^-3 900.0*10^-3 950.0*10^-3 1.0000 1.0500 1.1000 1.1500 1.2000 1.2500 1.3000 1.3500 1.4000 1.4500 1.5000 1.5500 1.6000 1.6500 1.7000 1.7500 1.8000 1.8500 1.9000 1.9500 2.0000 2.0500 2.1000 2.1500 2.2000 2.2500 2.3000 2.3500 2.4000 2.4500 2.5000 2.5500 2.6000 2.6500 2.7000 2.7500 2.8000 2.8500 2.9000 2.9500 3.0000 3.0500 3.1000 3.1500 3.2000 3.2500 3.3000 3.3500 3.4000 3.4500 3.5000 3.5500 3.6000 3.6500 3.7000 3.7500 3.8000 3.8500 3.9000 3.9500 4.0000 0 50.0*10^-3 100.0*10^-3 150.0*10^-3 200.0*10^-3 250.0*10^-3 300.0*10^-3 350.0*10^-3 400.0*10^-3 450.0*10^-3 500.0*10^-3 550.0*10^-3 600.0*10^-3 650.0*10^-3 700.0*10^-3 750.0*10^-3 800.0*10^-3 850.0*10^-3 900.0*10^-3 950.0*10^-3 1.0000 1.0500 1.1000 1.1500 1.2000 1.2500 1.3000 1.3500 1.4000 1.4500 1.5000 1.5500 1.6000 1.6500 1.7000 1.7500 1.8000 1.8500 1.9000 1.9500 2.0000 2.0500 2.1000 2.1500 2.2000 2.2500 2.3000 2.3500 2.4000 2.4500 2.5000 2.5500 2.6000 2.6500 2.7000 2.7500 2.8000 2.8500 2.9000 2.9500 3.0000 3.0500 3.1000 3.1500 3.2000 3.2500 3.3000 3.3500 3.4000 3.4500 3.5000 3.5500 3.6000 3.6500 3.7000 3.7500 3.8000 3.8500 3.9000 3.9500 4.0000 0 50.0*10^-3 100.0*10^-3 150.0*10^-3 200.0*10^-3 250.0*10^-3 300.0*10^-3 350.0*10^-3 400.0*10^-3 450.0*10^-3 500.0*10^-3 550.0*10^-3 600.0*10^-3 650.0*10^-3 700.0*10^-3 750.0*10^-3 800.0*10^-3 850.0*10^-3 900.0*10^-3 950.0*10^-3 1.0000 1.0500 1.1000 1.1500 1.2000 1.2500 1.3000 1.3500 1.4000 1.4500 1.5000 1.5500 1.6000 1.6500 1.7000 1.7500 1.8000 1.8500 1.9000 1.9500 2.0000 2.0500 2.1000 2.1500 2.2000 2.2500 2.3000 2.3500 2.4000 2.4500 2.5000 2.5500 2.6000 2.6500 2.7000 2.7500 2.8000 2.8500 2.9000 2.9500 3.0000 3.0500 3.1000 3.1500 3.2000 3.2500 3.3000 3.3500 3.4000 3.4500 3.5000 3.5500 3.6000 3.6500 3.7000 3.7500 3.8000 3.8500 3.9000 3.9500 4.0000];
Idrain=10^3*[34.3460*10^-9 57.2840*10^-9 62.7190*10^-9 64.0740*10^-9 67.1820*10^-9 68.1390*10^-9 69.4730*10^-9 72.7180*10^-9 70.4410*10^-9 75.9050*10^-9 73.4740*10^-9 76.4490*10^-9 77.2390*10^-9 78.3370*10^-9 79.6010*10^-9 79.7440*10^-9 82.7290*10^-9 84.4160*10^-9 85.0660*10^-9 89.1990*10^-9 89.7260*10^-9 89.9430*10^-9 88.0800*10^-9 92.5050*10^-9 94.3400*10^-9 94.5350*10^-9 94.9900*10^-9 98.9030*10^-9 101.2700*10^-9 99.3120*10^-9 103.0900*10^-9 104.8160*10^-9 105.0090*10^-9 107.7300*10^-9 108.0710*10^-9 109.5120*10^-9 110.5530*10^-9 112.7020*10^-9 114.3560*10^-9 114.7040*10^-9 114.8420*10^-9 115.0040*10^-9 115.0040*10^-9 115.0050*10^-9 115.0040*10^-9 115.0040*10^-9 115.0030*10^-9 115.0030*10^-9 115.0060*10^-9 115.0040*10^-9 115.0040*10^-9 115.0020*10^-9 115.0040*10^-9 115.0030*10^-9 115.0050*10^-9 115.0030*10^-9 115.0010*10^-9 -56.920*10^-9 -114.320*10^-9 92.920*10^-9 97.610*10^-9 97.910*10^-9 103.500*10^-9 108.880*10^-9 112.350*10^-9 117.430*10^-9 118.680*10^-9 127.010*10^-9 132.640*10^-9 134.730*10^-9 142.450*10^-9 144.270*10^-9 148.210*10^-9 157.970*10^-9 160.780*10^-9 167.810*10^-9 173.790*10^-9 180.890*10^-9 191.940*10^-9 196.220*10^-9 203.990*10^-9 -5.3460*10^-9 1.09460*10^-6 1.30780*10^-6 1.37500*10^-6 1.43450*10^-6 1.48310*10^-6 1.52930*10^-6 1.58450*10^-6 1.62410*10^-6 1.67150*10^-6 1.71110*10^-6 1.75110*10^-6 1.79220*10^-6 1.83180*10^-6 1.87870*10^-6 1.91280*10^-6 1.95000*10^-6 2.00030*10^-6 2.03740*10^-6 2.07430*10^-6 2.11840*10^-6 2.15500*10^-6 2.19020*10^-6 2.23670*10^-6 2.27610*10^-6 2.31160*10^-6 2.35480*10^-6 2.38590*10^-6 2.43650*10^-6 2.47500*10^-6 2.52620*10^-6 2.56470*10^-6 2.59450*10^-6 2.64420*10^-6 2.69000*10^-6 2.73420*10^-6 2.77580*10^-6 2.82460*10^-6 2.86490*10^-6 2.89960*10^-6 2.94760*10^-6 3.00010*10^-6 3.04080*10^-6 3.09430*10^-6 3.14460*10^-6 3.19250*10^-6 3.22610*10^-6 3.29120*10^-6 3.33060*10^-6 3.37770*10^-6 3.42920*10^-6 3.48640*10^-6 3.53490*10^-6 3.59530*10^-6 3.64030*10^-6 3.68910*10^-6 3.74370*10^-6 3.82490*10^-6 3.86860*10^-6 3.94390*10^-6 3.99290*10^-6 4.04950*10^-6 4.13120*10^-6 4.19100*10^-6 4.26040*10^-6 4.33060*10^-6 4.40700*10^-6 4.47710*10^-6 4.56090*10^-6 4.64140*10^-6 4.73110*10^-6 4.81990*10^-6 4.91330*10^-6 5.00710*10^-6 5.10210*10^-6 5.21200*10^-6 5.31500*10^-6 5.43750*10^-6 5.56450*10^-6 5.67000*10^-6 5.81080*10^-6 99.7190*10^-9 39.3600*10^-6 49.6400*10^-6 49.9120*10^-6 51.8610*10^-6 53.8630*10^-6 55.5090*10^-6 57.2350*10^-6 58.9530*10^-6 60.5080*10^-6 62.0930*10^-6 63.6530*10^-6 65.3550*10^-6 66.8860*10^-6 68.3880*10^-6 69.6330*10^-6 71.3430*10^-6 72.5320*10^-6 73.9380*10^-6 75.3790*10^-6 76.7870*10^-6 78.5540*10^-6 79.7450*10^-6 80.9680*10^-6 82.8560*10^-6 83.7790*10^-6 85.3630*10^-6 86.8130*10^-6 88.5190*10^-6 89.9500*10^-6 91.1010*10^-6 92.8270*10^-6 93.9380*10^-6 95.6630*10^-6 96.8390*10^-6 98.0560*10^-6 99.7150*10^-6 101.190*10^-6 104.590*10^-6 106.830*10^-6 108.740*10^-6 110.360*10^-6 111.880*10^-6 112.340*10^-6 114.540*10^-6 116.340*10^-6 117.860*10^-6 119.400*10^-6 121.040*10^-6 122.110*10^-6 123.920*10^-6 125.680*10^-6 127.220*10^-6 128.950*10^-6 130.540*10^-6 132.160*10^-6 133.970*10^-6 135.930*10^-6 137.890*10^-6 139.800*10^-6 141.810*10^-6 143.890*10^-6 145.830*10^-6 148.260*10^-6 150.850*10^-6 153.470*10^-6 155.270*10^-6 159.050*10^-6 162.080*10^-6 164.880*10^-6 168.570*10^-6 172.120*10^-6 175.880*10^-6 179.770*10^-6 183.910*10^-6 188.320*10^-6 192.610*10^-6 197.490*10^-6 202.320*10^-6 207.480*10^-6 212.820*10^-6 2.20890*10^-6 912.710*10^-6 1.18010*10^-3 1.28940*10^-3 1.35670*10^-3 1.41260*10^-3 1.46220*10^-3 1.50720*10^-3 1.54520*10^-3 1.58470*10^-3 1.62020*10^-3 1.65500*10^-3 1.68770*10^-3 1.72200*10^-3 1.75270*10^-3 1.77770*10^-3 1.80820*10^-3 1.83740*10^-3 1.86060*10^-3 1.88720*10^-3 1.91620*10^-3 1.93840*10^-3 1.96200*10^-3 1.98650*10^-3 2.01120*10^-3 2.03790*10^-3 2.05850*10^-3 2.08500*10^-3 2.10910*10^-3 2.13350*10^-3 2.15620*10^-3 2.17880*10^-3 2.19570*10^-3 2.22090*10^-3 2.24520*10^-3 2.26380*10^-3 2.28380*10^-3 2.30770*10^-3 2.33090*10^-3 2.35650*10^-3 2.38010*10^-3 2.39720*10^-3 2.42300*10^-3 2.44710*10^-3 2.47020*10^-3 2.49350*10^-3 2.51710*10^-3 2.53720*10^-3 2.55970*10^-3 2.58570*10^-3 2.61560*10^-3 2.64330*10^-3 2.67200*10^-3 2.70360*10^-3 2.73560*10^-3 2.77020*10^-3 2.80310*10^-3 2.84180*10^-3 2.88150*10^-3 2.91640*10^-3 2.96350*10^-3 3.00700*10^-3 3.05280*10^-3 3.09810*10^-3 3.14670*10^-3 3.19620*10^-3 3.24840*10^-3 3.30100*10^-3 3.35580*10^-3 3.41210*10^-3 3.47080*10^-3 3.52970*10^-3 3.59190*10^-3 3.65620*10^-3 3.72060*10^-3 3.78880*10^-3 3.85770*10^-3 3.92910*10^-3 4.00130*10^-3 4.07570*10^-3 4.15420*10^-3 6.62170*10^-6 4.81540*10^-3 8.20430*10^-3 10.18940*10^-3 11.18470*10^-3 11.6010*10^-3 11.9910*10^-3 12.2870*10^-3 12.5450*10^-3 12.7580*10^-3 12.9640*10^-3 13.1510*10^-3 13.3300*10^-3 13.4930*10^-3 13.6460*10^-3 13.7860*10^-3 13.9150*10^-3 14.0240*10^-3 14.1560*10^-3 14.2860*10^-3 14.4130*10^-3 14.5390*10^-3 14.6590*10^-3 14.7720*10^-3 14.8800*10^-3 14.9870*10^-3 15.0900*10^-3 15.1440*10^-3 15.2710*10^-3 15.3620*10^-3 15.4550*10^-3 15.5590*10^-3 15.6610*10^-3 15.7620*10^-3 15.8600*10^-3 15.9530*10^-3 16.0430*10^-3 16.1350*10^-3 16.2250*10^-3 16.3150*10^-3 16.3960*10^-3 16.4720*10^-3 16.5860*10^-3 16.6840*10^-3 16.7830*10^-3 16.8850*10^-3 16.9880*10^-3 17.0980*10^-3 17.2120*10^-3 17.3290*10^-3 17.4630*10^-3 17.5850*10^-3 17.7350*10^-3 17.8880*10^-3 18.0470*10^-3 18.2080*10^-3 18.3710*10^-3 18.5370*10^-3 18.7070*10^-3 18.8710*10^-3 19.0390*10^-3 19.2160*10^-3 19.3880*10^-3 19.5650*10^-3 19.7410*10^-3 19.9240*10^-3 20.1100*10^-3 20.2920*10^-3 20.4800*10^-3 20.6760*10^-3 20.8710*10^-3 21.0700*10^-3 21.2700*10^-3 21.4810*10^-3 21.6890*10^-3 21.8980*10^-3 22.1160*10^-3 22.3360*10^-3 22.5580*10^-3 22.7850*10^-3 23.0150*10^-3 7.68390*10^-6 7.65750*10^-3 14.7930*10^-3 21.3310*10^-3 27.0100*10^-3 31.6520*10^-3 35.0790*10^-3 37.3520*10^-3 38.7860*10^-3 39.7040*10^-3 40.3220*10^-3 40.8140*10^-3 41.2270*10^-3 41.5710*10^-3 41.9050*10^-3 42.2090*10^-3 42.4890*10^-3 42.7160*10^-3 42.9500*10^-3 43.1880*10^-3 43.4180*10^-3 43.6410*10^-3 43.8620*10^-3 44.0680*10^-3 44.2630*10^-3 44.4340*10^-3 44.6330*10^-3 44.8090*10^-3 44.9880*10^-3 45.1640*10^-3 45.3310*10^-3 45.5010*10^-3 45.6580*10^-3 45.8220*10^-3 45.9860*10^-3 46.1310*10^-3 46.2830*10^-3 46.4480*10^-3 46.5940*10^-3 46.7630*10^-3 46.9250*10^-3 47.0810*10^-3 47.2150*10^-3 47.3990*10^-3 47.5460*10^-3 47.7160*10^-3 47.9340*10^-3 48.1350*10^-3 48.3470*10^-3 48.5700*10^-3 48.8070*10^-3 49.0600*10^-3 49.3220*10^-3 49.5950*10^-3 49.8720*10^-3 50.1390*10^-3 50.4210*10^-3 50.6990*10^-3 50.9770*10^-3 51.2420*10^-3 51.5100*10^-3 51.7790*10^-3 52.0420*10^-3 52.3120*10^-3 52.5770*10^-3 52.8470*10^-3 53.1170*10^-3 53.3860*10^-3 53.6560*10^-3 53.9330*10^-3 54.2090*10^-3 54.4860*10^-3 54.7680*10^-3 55.0500*10^-3 55.3380*10^-3 55.6260*10^-3 55.9160*10^-3 56.2140*10^-3 56.5120*10^-3 56.8140*10^-3 57.1160*10^-3 5.81650*10^-6 8.79300*10^-3 17.3700*10^-3 25.7720*10^-3 33.8950*10^-3 41.7110*10^-3 49.1120*10^-3 55.9480*10^-3 62.1240*10^-3 67.4670*10^-3 71.8110*10^-3 75.1320*10^-3 77.4620*10^-3 79.0310*10^-3 80.0910*10^-3 80.7760*10^-3 81.3250*10^-3 81.7810*10^-3 82.1950*10^-3 82.5640*10^-3 82.8600*10^-3 83.1720*10^-3 83.4570*10^-3 83.7250*10^-3 83.9890*10^-3 84.2400*10^-3 84.4680*10^-3 84.6910*10^-3 84.9110*10^-3 85.1210*10^-3 85.3320*10^-3 85.5280*10^-3 85.7020*10^-3 85.8780*10^-3 86.1040*10^-3 86.3050*10^-3 86.4990*10^-3 86.6870*10^-3 86.8740*10^-3 87.0600*10^-3 87.2470*10^-3 87.4320*10^-3 87.6210*10^-3 87.7800*10^-3 88.0060*10^-3 88.2140*10^-3 88.4310*10^-3 88.6580*10^-3 88.8950*10^-3 89.1640*10^-3 89.4580*10^-3 89.7610*10^-3 90.0790*10^-3 90.4030*10^-3 90.7310*10^-3 91.0520*10^-3 91.3770*10^-3 91.6960*10^-3 92.0100*10^-3 92.3080*10^-3 92.6080*10^-3 92.9010*10^-3 93.1890*10^-3 93.4790*10^-3 93.7630*10^-3 94.0430*10^-3 94.3190*10^-3 94.5950*10^-3 94.8730*10^-3 95.1490*10^-3 95.4270*10^-3 95.7010*10^-3 95.9770*10^-3 96.2550*10^-3 96.5330*10^-3 96.8140*10^-3 97.0960*10^-3 97.3730*10^-3 97.6570*10^-3 97.9470*10^-3 98.2320*10^-3 -11.71450*10^-6 9.32770*10^-3 18.5520*10^-3 27.7110*10^-3 36.7340*10^-3 45.6520*10^-3 54.4040*10^-3 62.9320*10^-3 71.2540*10^-3 79.2910*10^-3 86.9540*10^-3 94.2160*10^-3 100.0040*10^-3 100.0020*10^-3 100.0020*10^-3 100.0030*10^-3 100.0040*10^-3 100.0020*10^-3 100.0020*10^-3 100.0020*10^-3 100.0010*10^-3 100.0010*10^-3 100.0030*10^-3 100.0040*10^-3 100.0040*10^-3 100.0010*10^-3 100.0040*10^-3 100.0040*10^-3 100.0020*10^-3 100.0040*10^-3 100.0030*10^-3 100.0030*10^-3 100.0020*10^-3 100.0020*10^-3 100.0040*10^-3 100.0020*10^-3 100.0020*10^-3 100.0020*10^-3 100.0010*10^-3 100.0020*10^-3 100.0030*10^-3 100.0010*10^-3 100.0020*10^-3 100.0010*10^-3 100.0020*10^-3 100.0030*10^-3 100.0010*10^-3 100.0010*10^-3 100.0010*10^-3 100.0040*10^-3 100.0040*10^-3 100.0010*10^-3 100.0040*10^-3 100.0030*10^-3 100.0020*10^-3 100.0040*10^-3 100.0020*10^-3 100.0010*10^-3 100.0000*10^-3 100.0010*10^-3 100.0010*10^-3 100.0020*10^-3 100.0030*10^-3 100.0010*10^-3 100.0020*10^-3 100.0020*10^-3 100.0040*10^-3 100.0030*10^-3 100.0020*10^-3 100.0030*10^-3 100.0030*10^-3 100.0020*10^-3 100.0020*10^-3 100.0010*10^-3 100.0020*10^-3 100.0020*10^-3 100.0030*10^-3 100.0030*10^-3 100.0010*10^-3 100.0020*10^-3 100.0030*10^-3];

grey=[0.4,0.4,0.4];                                     % Ran out of colors; using a custom color
plot(Vdrain(1:81), Idrain(1:81), 'Color', grey);                  % VGS = 0
grid on;
title('Drain Current vs. Drain-Source Voltage Curve');
xlabel('V_{DS} (V)');
ylabel('I_{D} (mA)');
ylim([0 120]);
hold on;
plot(Vdrain(82:162), Idrain(82:162), 'y');              % VGS = 100 mV
plot(Vdrain(163:243), Idrain(163:243), 'g');            % VGS = 200 mV
plot(Vdrain(244:324), Idrain(244:324), 'c');            % VGS = 300 mV
plot(Vdrain(325:405), Idrain(325:405), 'm');            % VGS = 400 mV
plot(Vdrain(406:486), Idrain(406:486), 'r');            % VGS = 500 mV
plot(Vdrain(487:567), Idrain(487:567), 'b');            % VGS = 600 mV
plot(Vdrain(568:648), Idrain(568:648), 'k'); % VGS = 700 mV

figureHandle = gcf;                                     % Change font and line width
set(findall(figureHandle,'type','text'),'fontSize',15,'fontWeight','bold');
set(findall(figureHandle,'Type','Line'),'LineWidth',2)
line([0 4], [100 100], 'LineStyle', '--', 'Color', 'r', 'LineWidth', .5);
h = legend('V_{GS} = 0 V','V_{GS} = 0.10 V','V_{GS} = 0.20 V','V_{GS} = 0.30 V','V_{GS} = 0.40 V','V_{GS} = 0.50 V','V_{GS} = 0.60 V','V_{GS} = 0.70 V', '100 mA (max)');
set(h, 'FontSize', 10);


%% Transfer Characteristic Curve (ID vs. VGS)
hold off;
figure;
Vgate=[0 25.0*10^-3 50.0*10^-3 75.0*10^-3 100.0*10^-3 125.0*10^-3 150.0*10^-3 175.0*10^-3 200.0*10^-3 225.0*10^-3 250.0*10^-3 275.0*10^-3 300.0*10^-3 325.0*10^-3 350.0*10^-3 375.0*10^-3 400.0*10^-3 425.0*10^-3 450.0*10^-3 475.0*10^-3 500.0*10^-3 525.0*10^-3 550.0*10^-3 575.0*10^-3 600.0*10^-3 625.0*10^-3 650.0*10^-3 675.0*10^-3 700.0*10^-3];
Idrain=10^3*[108.585*10^-9 212.163*10^-9 492.199*10^-9 1.19331*10^-6 2.93316*10^-6 7.27318*10^-6 17.9723*10^-6 43.8841*10^-6 105.604*10^-6 247.340*10^-6 554.978*10^-6 1.17634*10^-3 2.31715*10^-3 4.21997*10^-3 7.09920*10^-3 11.09374*10^-3 16.3876*10^-3 22.4924*10^-3 29.7535*10^-3 37.8808*10^-3 46.7471*10^-3 56.2136*10^-3 66.1688*10^-3 76.5127*10^-3 87.1568*10^-3 98.0438*10^-3 100.0074*10^-3 100.0025*10^-3 100.0026*10^-3];
gm=[4.143120000*10^-6 7.672280000*10^-6 19.62294000*10^-6 48.81922000*10^-6 121.5974000*10^-6 300.7828000*10^-6 732.2184000*10^-6 1.752634000*10^-3 4.069118000*10^-3 8.987480000*10^-3 18.58000000*10^-3 35.24344000*10^-3 60.87260000*10^-3 95.64100000*10^-3 137.4754000*10^-3 185.7680000*10^-3 227.9732000*10^-3 267.3180000*10^-3 307.7680000*10^-3 339.8720000*10^-3 366.6560000*10^-3 388.4340000*10^-3 405.9820000*10^-3 419.7600000*10^-3 430.6220000*10^-3 257.0120000*10^-3 39.17400000*10^-3 -96.00000000*10^-6 4.000000000*10^-6];
% Plot gm using lab data
gmCalc = 10^-3*Idrain./Vgate

% Plot ID vs VGS
plot(Vgate, Idrain);
grid on;
title('Transfer Characteristic Curve (I_{D} vs. V_{GS})');
xlabel('V_{GS} (V)');
ylabel('I_{D} (mA)');
figureHandle = gcf;                                     % Change font and line width
set(findall(figureHandle,'type','text'),'fontSize',15,'fontWeight','bold');
set(findall(figureHandle,'Type','Line'),'LineWidth',2)

% % Plot gm vs ID
% figure;
% plot(Idrain(1:25), 20*log(gm(1:25)));                           % Last 4 data points are bad
% grid on;
% title('Gain vs I_{D}');
% ylabel('gm (S)');
% xlabel('I_{D} (mA)');
% figureHandle = gcf;                                     % Change font and line width
% set(findall(figureHandle,'type','text'),'fontSize',15,'fontWeight','bold');
% set(findall(figureHandle,'Type','Line'),'LineWidth',2)