% Constants in the functions/formulas:
h = 6.626069e-34;    % Planck's constant, units of J*s
c = 299792458;      % speed of light, units of m/s
kb = 1.38065e-23;    % Boltzmann constant, units of J/K

L = linspace(1e-9,3000e-9,3000);    % wavlength, '\lambda', parameters, in m
v = c./L;    % frequency, '\nu', parameters, in Hz

% Plot wavelength and frequency graphs in
% Uses function files IL(wavelength) and Iv(freq.)

T = [3000, 6000, 9000];      % 3 temperature values, in K (this vector of
                              % values gives 3 blackbody curves)
% (I)
figure(1); clf
% make vectors for 3 temperatures in T
IL1 = IL(L,T(:,1));
IL2 = IL(L,T(:,2));
IL3 = IL(L,T(:,3));

plot(L,IL1,'k')    % plot spectrum @ 3,000 K, black line
hold on      % toggle figure action
plot(L,IL2,'g')    % plot spectrum @ 6,000 K, green line
plot(L,IL3,'b')    % plot spectrum @ 9,000 K, blue line
text(.6e-6, .3e6,'3,000 K')    % text marker
text(.4e-6, 1.2*max(IL2),'6,000 K')
text(.5e-6, 8e6,'9,000 K')
title('3 Blackbody spectra in \lambda space')
xlabel('\lambda , m')
ylabel('Irradiance')
% fix the x-axis at 2,000 nm
axis([1e-9 2000e-9 0 1.05*max(IL3)])
% note:  if you produce spectra for different temps than those listed in T,
% you will probably have to fiddle with the axis parameters to actually see the spectra
hold off    % release figure toggle
% (II)
figure; clf
% make vectors for 3 temperatures in T
Iv1 = Iv(v,T(:,1));
Iv2 = Iv(v,T(:,2));
Iv3 = Iv(v,T(:,3));

plot(v,Iv1,'k') % 3,000 K spectrum, from above, in freq. space
hold on
plot(v,Iv2,'g') % 6,000 K spectrum, from above, in freq. space
plot(v,Iv3,'b') % 9,000 K spectrum, from above, in freq. space
text(2e14,1.75*max(Iv1),'3,000 K')
text(4e14,1.15*max(Iv2),'6,000 K')
text(5e14,.95*max(Iv3),'9,000 K')
title('3 Blackbody spectra in \nu (freq.) space')
xlabel('\nu , Hz')
ylabel('Irradiance')
% fix the x-axis at 900 THz (UV-A radiation)
axis([1e14 9e14 0 1.05*max(Iv3)])
hold off

%  Notice how the spectra progress in each plot:
% (I) The wavlength spectra go: blue-green-black
% i.e. hot-med-cold

% (II) The freq. spectra go: black-green-blue (opposite of I)
% i.e. cold-med-hot

% Wavelength and frequency spectra have opposite peak progression.
