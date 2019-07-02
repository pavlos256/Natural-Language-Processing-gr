if len_w > 2 && endsWith(uword,{'ΕΤΕ'})
    r23=cat(1,r23,termList{word_number});
    
    len_suffix=endsWith(uword,{'ΕΤΕ'});
    
    uword(len_w-(len_suffix-1) : end)=[];
    
    if endsWithVowel2(uword) || ismember(uword,{'ΑΒΑΡ','ΒΕΝ','ΕΝΑΡ','ΑΒΡ','ΑΔ','ΑΘ','ΑΝ','ΑΠΛ','ΒΑΡΟΝ','ΝΤΡ','ΣΚ'...
            'ΚΟΠ','ΜΠΟΡ','ΝΙΦ','ΠΑΓ','ΠΑΡΑΚΑΛ','ΣΕΡΠ','ΣΚΕΛ','ΣΥΡΦ','ΤΟΚ','Υ','Δ','ΕΜ','ΘΑΡΡ','Θ','ΟΔ','ΑΙΡ','ΦΟΡ','ΤΑΘ','ΔΙΑΘ'...
            'ΣΧ','ΕΝΔ','ΕΥΡ','ΤΙΘ','ΥΠΕΡΘ','ΡΑΘ','ΕΝΘ','ΡΟΘ','ΣΘ','ΠΥΡ','ΑΙΝ','ΣΥΝΔ','ΣΥΝ','ΣΥΝΘ','ΧΩΡ','ΠΟΝ','ΒΡ','ΚΑΘ','ΕΥΘ','ΕΚΘ'...
            'ΝΕΤ','ΡΟΝ','ΑΡΚ','ΒΑΡ','ΒΟΛ','ΩΦΕΛ'})...
            || endsWith(uword,{'ΟΔ','ΑΙΡ','ΦΟΡ','ΤΑΘ','ΔΙΑΘ','ΣΧ','ΕΝΔ','ΕΥΡ','ΤΙΘ','ΥΠΕΡΘ','ΡΑΘ','ΕΝΘ','ΡΟΘ','ΣΘ'...
            'ΠΥΡ','ΑΙΝ','ΣΥΝΔ','ΣΥΝΘ','ΣΥΝ','ΧΩΡ','ΠΟΝ','ΒΡ','ΚΑΘ','ΕΥΘ','ΕΚΘ','ΝΕΤ','ΡΟΝ','ΑΡΚ','ΒΑΡ','ΒΟΛ','ΩΦΕΛ'})
        
        uword=cat(2,uword,'ΕΤ');
    end
    
    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end

