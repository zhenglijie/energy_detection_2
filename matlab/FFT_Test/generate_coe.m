clc;
clear all;

fid_rd = fopen('data_before_fft.txt', 'r');

data = fscanf(fid_rd,'%d\n', 1024);

fclose(fid_rd);

fid_wr = fopen('rom_data.coe', 'w');

fprintf(fid_wr, 'MEMORY_INITIALIZATION_RADIX = 10;\n');
fprintf(fid_wr, 'MEMORY_INITIALIZATION_VECTOR =\n');

for i = 1 : 1024
    x = data(i);
    fprintf(fid_wr, '%d\n', x);
end

fclose(fid_wr);
