function fsig = butter_filter(sig,low,high,order,fs)
    [b,a] = butter(order, [low high]/(fs/2), 'bandpass');
    a
    sig = sig';

    fsig1 = filter(b,a,sig);
    ffsig1 = flipud(fsig1);
    ffsig1 = filter(b,a,ffsig1);
    fsig = flipud(ffsig1);
end

