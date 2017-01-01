t = cputime();
Fs = 20;

% signal of pre-term labour (early); 0.3Hz - 4Hz
load('tpehg1203m.mat')
spe = val(9,:);
figure(1);
plot(spe);

spe = butter_filter(spe,0.3,4,4,Fs);
spe = spe(181*Fs:end-181*Fs);

% signal of pre-term labour (later); 0.3Hz - 4Hz
load('tpehg1007m.mat')
spl = val(9,:);
figure(2);
plot(spl);
spl = butter_filter(spl,0.3,4,4,Fs);
spl = spl(181*Fs:end-181*Fs);

% signal of term labour (early); 0.3Hz - 4Hz
load('tpehg1118m.mat')
ste = val(9,:);
figure(3);
plot(ste);
ste = butter_filter(ste,0.3,4,4,Fs);
ste = ste(181*Fs:end-181*Fs);

% signal of term labour (later); 0.3Hz - 4Hz
load('tpehg1022m.mat')
stl = val(9,:);
figure(4);
plot(stl);
stl = butter_filter(stl,0.3,4,4,Fs);
stl = stl(181*Fs:end-181*Fs);

se_pe = sampleEntropy(spe,3,0.15)
fprintf('Running time: %f\n', cputime() - t);
se_pl = sampleEntropy(spl,3,0.15)
se_te = sampleEntropy(ste,3,0.15)
se_tl = sampleEntropy(stl,3,0.15)

% Entropy for signal 2
load('tpehg1203m.mat')
spe_signal2 = val(5,:);
spe_signal2 = butter_filter(spe_signal2,0.3,4,4,Fs);
spe_signal2 = spe_signal2(181*Fs:end-181*Fs);
se_pe_signal2 = sampleEntropy(spe_signal2,3,0.15)
