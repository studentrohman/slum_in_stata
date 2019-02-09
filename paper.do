clear 
set more off
*get data from Worldbank development indicator
wbopendata, language(en - English) country() topics() indicator(AG.LND.TOTL.UR.K2 - Urban land area (sq. km);AG.LND.EL5M.UR.ZS - Urban land area where elevation is below 5 meters (% of total land area);AG.LND.EL5M.UR.K2 - Urban land area where elevation is below 5 meters (sq. km);EN.POP.SLUM.UR.ZS - Population living in slums (% of urban population); EN.POP.DNST - Population density (people per sq. km of land area);EN.POP.EL5M.UR.ZS - Urban population living in areas where elevation is below 5 meters (% of total population); EN.POP.SLUM.UR.ZS - Population living in slums (% of urban population);EN.URB.MCTY - Population in urban agglomerations of more than 1 million; EN.URB.MCTY.TL.ZS - Population in urban agglomerations of more than 1 million (% of total population)) clear long
*visualising data 
twoway(scatter  en_pop_slum_ur_zs en_urb_mcty_tl_zs[w= ag_lnd_totl_ur_k2 ], msymbol(circle_hollow)) (lfit   en_pop_slum_ur_zs en_urb_mcty_tl_zs)
