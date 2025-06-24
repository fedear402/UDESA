% Copyright (C) 2013-2020 Benjamin Born and Johannes Pfeifer
%
%  This is free software: you can redistribute it and/or modify
%  it under the terms of the GNU General Public License as published by
%  the Free Software Foundation, either version 3 of the License, or
%  (at your option) any later version.
%
%  It is distributed in the hope that it will be useful,
%  but WITHOUT ANY WARRANTY; without even the implied warranty of
%  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%  GNU General Public License for more details.
%
%  For a copy of the GNU General Public License,
%  see <http://www.gnu.org/licenses/>.

if ~isfolder('Figures')
    mkdir('Figures')
end

[~,~]=rmdir('+BP2020_CES','s');
pause(1)
dynare BP2020_CES -Dsticky_prices=1 -Dsticky_wages=1
set(findall(h_tfp_vola,'-property','FontSize'),'FontSize',10)
set(findall(h_tfp_vola,'-property','FontWeight'),'FontWeight','normal')
h_tfp_vola.Children(1).YRuler.Exponent=0;
print(h_tfp_vola,'Figures/BP2020_tfp_vola_sticky_both','-depsc2')
saveas(h_tfp_vola,'Figures/BP2020_tfp_vola_sticky_both')

set(findall(h_sigma_z,'-property','FontSize'),'FontSize',10)
set(findall(h_sigma_z,'-property','FontWeight'),'FontWeight','normal')
print(h_sigma_z,'Figures/BP2020_sigma_z_sticky_both','-depsc2')
saveas(h_sigma_z,'Figures/BP2020_sigma_z_sticky_both')

set(findall(h_G_vola,'-property','FontSize'),'FontSize',10)
set(findall(h_G_vola,'-property','FontWeight'),'FontWeight','normal')
h_G_vola.Children(1).YRuler.Exponent=-4;
print(h_G_vola,'Figures/BP2020_G_vola_sticky_both','-depsc2')
saveas(h_G_vola,'Figures/BP2020_G_vola_sticky_both')

set(findall(h_G,'-property','FontSize'),'FontSize',10)
set(findall(h_G,'-property','FontWeight'),'FontWeight','normal')
print(h_G,'Figures/BP2020_G_sticky_both','-depsc2')
saveas(h_G,'Figures/BP2020_G_sticky_both')

set(findall(h_Z,'-property','FontSize'),'FontSize',10)
set(findall(h_Z,'-property','FontWeight'),'FontWeight','normal')
print(h_Z,'Figures/BP2020_Z_sticky_both','-depsc2')
saveas(h_Z,'Figures/BP2020_Z_sticky_both')
pause(1);

set(findall(h_sigma_G,'-property','FontSize'),'FontSize',10)
set(findall(h_sigma_G,'-property','FontWeight'),'FontWeight','normal')
print(h_sigma_G,'Figures/BP2020_sigma_G_sticky_both','-depsc2')
saveas(h_sigma_G,'Figures/BP2020_sigma_G_sticky_both')

% return;

close all
clear
[~,~]=rmdir('+BP2020_CES','s');
dynare BP2020_CES -Dsticky_prices=1 -Dsticky_wages=0
set(findall(h_tfp_vola,'-property','FontSize'),'FontSize',10)
set(findall(h_tfp_vola,'-property','FontWeight'),'FontWeight','normal')
h_tfp_vola.Children(1).YRuler.Exponent=0;
print(h_tfp_vola,'Figures/BP2020_tfp_vola_sticky_price','-depsc2')
saveas(h_tfp_vola,'Figures/BP2020_tfp_vola_sticky_price')
set(findall(h_sigma_z,'-property','FontSize'),'FontSize',10)
set(findall(h_sigma_z,'-property','FontWeight'),'FontWeight','normal')

print(h_sigma_z,'Figures/BP2020_sigma_z_sticky_price','-depsc2')
saveas(h_sigma_z,'Figures/BP2020_sigma_z_sticky_price')
set(findall(h_G_vola,'-property','FontSize'),'FontSize',10)
set(findall(h_G_vola,'-property','FontWeight'),'FontWeight','normal')
h_G_vola.Children(1).YRuler.Exponent=-4;
print(h_G_vola,'Figures/BP2020_G_vola_sticky_price','-depsc2')
saveas(h_G_vola,'Figures/BP2020_G_vola_sticky_price')

set(findall(h_sigma_G,'-property','FontSize'),'FontSize',10)
set(findall(h_sigma_G,'-property','FontWeight'),'FontWeight','normal')
print(h_sigma_G,'Figures/BP2020_sigma_G_sticky_price','-depsc2')
saveas(h_sigma_G,'Figures/BP2020_sigma_G_sticky_price')

pause(1);
close all
clear
[~,~]=rmdir('+BP2020_CES','s');
dynare BP2020_CES -Dsticky_prices=0 -Dsticky_wages=1
set(findall(h_tfp_vola,'-property','FontSize'),'FontSize',10)
set(findall(h_tfp_vola,'-property','FontWeight'),'FontWeight','normal')
h_tfp_vola.Children(1).YRuler.Exponent=0;
print(h_tfp_vola,'Figures/BP2020_tfp_vola_sticky_wage','-depsc2')
saveas(h_tfp_vola,'Figures/BP2020_tfp_vola_sticky_wage')
set(findall(h_sigma_z,'-property','FontSize'),'FontSize',10)
set(findall(h_sigma_z,'-property','FontWeight'),'FontWeight','normal')
print(h_sigma_z,'Figures/BP2020_sigma_z_sticky_wage','-depsc2')
saveas(h_sigma_z,'Figures/BP2020_sigma_z_sticky_wage')
set(findall(h_G_vola,'-property','FontSize'),'FontSize',10)
set(findall(h_G_vola,'-property','FontWeight'),'FontWeight','normal')
h_sigma_G.Children(1).YRuler.Exponent=-4;
print(h_G_vola,'Figures/BP2020_G_vola_sticky_wage','-depsc2')
saveas(h_G_vola,'Figures/BP2020_G_vola_sticky_wage')

set(findall(h_sigma_G,'-property','FontSize'),'FontSize',10)
set(findall(h_sigma_G,'-property','FontWeight'),'FontWeight','normal')
print(h_sigma_G,'Figures/BP2020_sigma_G_sticky_wage','-depsc2')
saveas(h_sigma_G,'Figures/BP2020_sigma_G_sticky_wage')

pause(1);
close all
clear
[~,~]=rmdir('+BP2020_CES','s');
dynare BP2020_CES -Dsticky_prices=0 -Dsticky_wages=0
set(findall(h_tfp_vola,'-property','FontSize'),'FontSize',10)
set(findall(h_tfp_vola,'-property','FontWeight'),'FontWeight','normal')
h_tfp_vola.Children(1).YRuler.Exponent=0;
print(h_tfp_vola,'Figures/BP2020_tfp_vola_flex','-depsc2')
saveas(h_tfp_vola,'Figures/BP2020_tfp_vola_flex')

set(findall(h_sigma_z,'-property','FontSize'),'FontSize',10)
set(findall(h_sigma_z,'-property','FontWeight'),'FontWeight','normal')
print(h_sigma_z,'Figures/BP2020_sigma_z_flex','-depsc2')
saveas(h_sigma_z,'Figures/BP2020_sigma_z_flex')

set(findall(h_G_vola,'-property','FontSize'),'FontSize',10)
set(findall(h_G_vola,'-property','FontWeight'),'FontWeight','normal')
h_G_vola.Children(1).YRuler.Exponent=-4;
print(h_G_vola,'Figures/BP2020_G_vola_flex','-depsc2')
saveas(h_G_vola,'Figures/BP2020_G_vola_flex')

set(findall(h_sigma_G,'-property','FontSize'),'FontSize',10)
set(findall(h_sigma_G,'-property','FontWeight'),'FontWeight','normal')
print(h_sigma_G,'Figures/BP2020_sigma_G_flex','-depsc2')
saveas(h_sigma_G,'Figures/BP2020_sigma_G_flex')


%% Do firm risk aversion
close all
clear
pause(1);
[~,~]=rmdir('+BP2020_CES','s');
dynare BP2020_CES -Dsticky_prices=1 -Dsticky_wages=1 -DSeparate_Firm_Risk_Aversion=1
set(findall(h_tfp_vola,'-property','FontSize'),'FontSize',10)
set(findall(h_tfp_vola,'-property','FontWeight'),'FontWeight','normal')
h_tfp_vola.Children(1).YRuler.Exponent=0;
print(h_tfp_vola,'Figures/BP2020_tfp_vola_Firm_RA','-depsc2')
saveas(h_tfp_vola,'Figures/BP2020_tfp_vola_Firm_RA')

set(findall(h_G_vola,'-property','FontSize'),'FontSize',10)
set(findall(h_G_vola,'-property','FontWeight'),'FontWeight','normal')
h_G_vola.Children(1).YRuler.Exponent=-4;
print(h_G_vola,'Figures/BP2020_G_vola_Firm_RA','-depsc2')
saveas(h_G_vola,'Figures/BP2020_G_vola_Firm_RA')

%% Do FV et calibration
close all
clear
pause(1);
[~,~]=rmdir('+BP2020_CES','s');
dynare BP2020_CES -Dsticky_prices=1 -Dsticky_wages=1 -DSeparate_Firm_Risk_Aversion=1 -DFV_et_al_calibration=1
set(findall(h_tfp_vola,'-property','FontSize'),'FontSize',10)
set(findall(h_tfp_vola,'-property','FontWeight'),'FontWeight','normal')
h_tfp_vola.Children(1).YRuler.Exponent=0;
print(h_tfp_vola,'Figures/BP2020_tfp_vola_FV','-depsc2')
saveas(h_tfp_vola,'Figures/BP2020_tfp_vola_FV')

set(findall(h_G_vola,'-property','FontSize'),'FontSize',10)
set(findall(h_G_vola,'-property','FontWeight'),'FontWeight','normal')
h_G_vola.Children(1).YRuler.Exponent=-4;
print(h_G_vola,'Figures/BP2020_G_vola_FV','-depsc2')
saveas(h_G_vola,'Figures/BP2020_G_vola_FV')


%% Do FV et + Leduc Liu calibration 
close all
clear
pause(1);
[~,~]=rmdir('+BP2020_CES','s');
dynare BP2020_CES -Dsticky_prices=1 -Dsticky_wages=1 -DSeparate_Firm_Risk_Aversion=1 -DFV_et_al_calibration=1 -DLeduc_Liu_calibration=1
set(findall(h_tfp_vola,'-property','FontSize'),'FontSize',10)
set(findall(h_tfp_vola,'-property','FontWeight'),'FontWeight','normal')
h_tfp_vola.Children(1).YRuler.Exponent=0;
print(h_tfp_vola,'Figures/BP2020_tfp_vola_FV_LL','-depsc2')
saveas(h_tfp_vola,'Figures/BP2020_tfp_vola_FV_LL')

set(findall(h_G_vola,'-property','FontSize'),'FontSize',10)
set(findall(h_G_vola,'-property','FontWeight'),'FontWeight','normal')
h_G_vola.Children(1).YRuler.Exponent=-4;
print(h_G_vola,'Figures/BP2020_G_vola_FV_LL','-depsc2')
saveas(h_G_vola,'Figures/BP2020_G_vola_FV_LL')

close all
clear
pause(1);
[~,~]=rmdir('+BP2020_CES','s');
dynare BP2020_CES -Dsticky_prices=1 -Dsticky_wages=1 -DSeparate_Firm_Risk_Aversion=1 -DFV_et_al_calibration=1 -DLeduc_Liu_calibration=1 -DLarge_shocks=1
set(findall(h_tfp_vola,'-property','FontSize'),'FontSize',10)
set(findall(h_tfp_vola,'-property','FontWeight'),'FontWeight','normal')
h_tfp_vola.Children(1).YRuler.Exponent=0;
print(h_tfp_vola,'Figures/BP2020_tfp_vola_FV_LL_large','-depsc2')
saveas(h_tfp_vola,'Figures/BP2020_tfp_vola_FV_LL_large')

set(findall(h_G_vola,'-property','FontSize'),'FontSize',10)
set(findall(h_G_vola,'-property','FontWeight'),'FontWeight','normal')
h_G_vola.Children(1).YRuler.Exponent=-4;
print(h_G_vola,'Figures/BP2020_G_vola_FV_LL_large','-depsc2')
saveas(h_G_vola,'Figures/BP2020_G_vola_FV_LL_large')


close all
clear
pause(1);
[~,~]=rmdir('+BP2020_CES','s');
dynare BP2020_CES -Dsticky_prices=1 -Dsticky_wages=1 -DSeparate_Firm_Risk_Aversion=1 -DFV_et_al_calibration=1 -DLeduc_Liu_calibration=1 -DLarge_shocks=1 -DSequential_shocks=1
set(findall(h_tfp_vola,'-property','FontSize'),'FontSize',10)
set(findall(h_tfp_vola,'-property','FontWeight'),'FontWeight','normal')
h_tfp_vola.Children(1).YRuler.Exponent=0;
print(h_tfp_vola,'Figures/BP2020_tfp_vola_FV_LL_large_sequential','-depsc2')
saveas(h_tfp_vola,'Figures/BP2020_tfp_vola_FV_LL_large_sequential')

set(findall(h_G_vola,'-property','FontSize'),'FontSize',10)
set(findall(h_G_vola,'-property','FontWeight'),'FontWeight','normal')
h_G_vola.Children(1).YRuler.Exponent=-4;
print(h_G_vola,'Figures/BP2020_G_vola_FV_LL_large_sequential','-depsc2')
saveas(h_G_vola,'Figures/BP2020_G_vola_FV_LL_large_sequential')

combine_figures_effect_size_order_4