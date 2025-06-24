clear all
cd "/Users/fedelopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/06/ECONOMETRIA/TP_FINAL/datos"
import excel final2.xlsx, firstrow case(lower)

levelsof actividad, local(levels)

foreach level of local levels {
    local short_level = "`level'"
    local dummy_name = "`short_level'_dummy"
    if length("`dummy_name'") > 32 {
        local dummy_name = substr("`dummy_name'", 1, 25)
    }
    gen `dummy_name' = (actividad == "`level'")
}

reg empresas pj pob densidad nbi_pob_perc dif_sal_avg delitos_x_hab tasas_p_jur_perc autonomia_perc
outreg2 using b.doc, replace

reg empresas pj nbi_pob_perc dif_sal_avg  delitos_x_hab tasas_p_jur_perc autonomia_perc
outreg2 using a.doc, replace
reg empresas pj pob nbi_pob_perc dif_sal_avg  delitos_x_hab tasas_p_jur_perc autonomia_perc
outreg2 using a.doc, append
reg empresas pj densidad nbi_pob_perc dif_sal_avg  delitos_x_hab tasas_p_jur_perc autonomia_perc
outreg2 using a.doc, append
reg empresas pj pob densidad nbi_pob_perc dif_sal_avg  delitos_x_hab tasas_p_jur_perc autonomia_perc
outreg2 using a.doc, append



reg empresas pj pob nbi_pob_perc dif_sal_avg delitos_x_hab tasas_p_jur_perc autonomia_perc
outreg2 using c.doc, replace
reg empresas pj pob nbi_pob_perc dif_sal_avg delitos_x_hab tasas_p_jur_perc
outreg2 using c.doc, append

reg empresas pj pob nbi_pob_perc dif_sal_avg  delitos_x_hab tasas_p_jur_perc autonomia_perc, robust
outreg2 using d.doc, replace

reg empresas persistenceindex pob nbi_pob_perc dif_sal_avg  delitos_x_hab tasas_p_jur_perc autonomia_perc, robust
outreg2 using p.doc, replace


reg pj pob densidad nbi_pob_perc dif_sal_avg delitos_x_hab tasas_p_jur_perc autonomia_perc
outreg2 using t.doc, replace
estat hettest
reg pob pj densidad nbi_pob_perc dif_sal_avg delitos_x_hab tasas_p_jur_perc autonomia_perc, robust
outreg2 using t.doc, append
reg densidad pob pj nbi_pob_perc dif_sal_avg delitos_x_hab tasas_p_jur_perc autonomia_perc, robust
outreg2 using t.doc, append
reg nbi_pob_perc densidad pob pj dif_sal_avg delitos_x_hab tasas_p_jur_perc autonomia_perc, robust
outreg2 using t.doc, append
reg dif_sal_avg nbi_pob_perc densidad pob pj delitos_x_hab tasas_p_jur_perc autonomia_perc
outreg2 using t.doc, append
estat hettest
reg delitos_x_hab dif_sal_avg nbi_pob_perc densidad pob pj  tasas_p_jur_perc autonomia_perc, robust
outreg2 using t.doc, append
reg tasas_p_jur_perc delitos_x_hab dif_sal_avg nbi_pob_perc densidad pob pj  autonomia_perc
outreg2 using t.doc, append
estat hettest
reg autonomia_perc tasas_p_jur_perc delitos_x_hab dif_sal_avg nbi_pob_perc densidad pob pj
outreg2 using t.doc, append
estat hettest

reg empresas pj, robust
outreg2 using tabla.doc, replace

reg empresas pj pob, robust
outreg2 using tabla.doc, append

reg empresas pj pob densidad, robust
outreg2 using tabla.doc, append

reg empresas pj pob densidad nbi_pob_perc, robust
outreg2 using tabla.doc, append

reg empresas pj pob densidad nbi_pob_perc dif_sal_avg , robust
outreg2 using tabla.doc, append

reg empresas pj pob densidad nbi_pob_perc dif_sal_avg  delitos_x_hab , robust
outreg2 using tabla.doc, append

reg empresas pj pob densidad nbi_pob_perc dif_sal_avg  delitos_x_hab tasas_p_jur_perc, robust
outreg2 using tabla.doc, append

reg empresas pj pob densidad nbi_pob_perc dif_sal_avg  delitos_x_hab tasas_p_jur_perc autonomia_perc, robust
outreg2 using tabla.doc, append

reg persistenceindex nbi_pob_perc dif_sal_avg  autonomia_perc, robust
outreg2 using tabla.doc, append

reg empresas persistenceindex, robust
outreg2 using tabla2.doc, replace

reg empresas persistenceindex pob, robust
outreg2 using tabla2.doc, append

reg empresas persistenceindex pob densidad, robust
outreg2 using tabla2.doc, append

reg empresas persistenceindex pob densidad nbi_pob_perc, robust
outreg2 using tabla2.doc, append

reg empresas persistenceindex pob densidad nbi_pob_perc dif_sal_avg, robust
outreg2 using tabla2.doc, append

reg empresas persistenceindex pob densidad nbi_pob_perc dif_sal_avg delitos_x_hab , robust
outreg2 using tabla2.doc, append

reg empresas persistenceindex pob densidad nbi_pob_perc dif_sal_avg delitos_x_hab tasas_p_jur_perc, robust
outreg2 using tabla2.doc, append

reg empresas persistenceindex pob densidad nbi_pob_perc dif_sal_avg delitos_x_hab tasas_p_jur_perc autonomia_perc, robust
outreg2 using tabla2.doc, append

/*
reg empresas pj densidad nbi_pob pob autonomia delitos_x_hab
outreg2 using w.doc, replace

reg empresas ucr densidad nbi_pob pob autonomia
outreg2 using w.doc, append

reg empresas pj ucr densidad nbi_pob pob autonomia
outreg2 using w.doc, append

reg empresas pj densidad nbi_pob autonomia
outreg2 using w.doc, append

reg empresas pj densidad nbi_pob pob autonomia dif_sal_avg
outreg2 using w.doc, append

reg empresas pj densidad nbi_pob pob autonomia dif_sal_avg tasas_p_jur delitos_x_hab
outreg2 using o.doc, replace


reg itae pj densidad nbi_pob pob autonomia
outreg2 using z.doc, replace
reg itae dif_sal_avg
outreg2 using z.doc, replace
reg itae pj densidad nbi_pob pob dif_sal_avg
outreg2 using z.doc, replace
