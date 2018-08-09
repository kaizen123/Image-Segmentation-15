function res = adaptive_method(image)
    [a, b, c, d] = divide_in_four(image);
    [aa, ab, ac, ad] = divide_in_four(a);
    [ba, bb, bc, bd] = divide_in_four(b);
    [ca, cb, cc, cd] = divide_in_four(c);
    [da, db, dc, dd] = divide_in_four(d);
    
    aa = otsu_method(aa);
    ab = otsu_method(ab);
    ac = otsu_method(ac);
    ad = otsu_method(ad);
    
    ba = otsu_method(ba);
    bb = otsu_method(bb);
    bc = otsu_method(bc);
    bd = otsu_method(bd);
    
    ca = otsu_method(ca);
    cb = otsu_method(cb);
    cc = otsu_method(cc);
    cd = otsu_method(cd);
    
    da = otsu_method(da);
    db = otsu_method(db);
    dc = otsu_method(dc);
    dd = otsu_method(dd);
    
    a = [aa ab; ac ad];
    b = [ba bb; bc bd];
    c = [ca cb; cc cd];
    d = [da db; dc dd];
    res = [a b; c d];
end