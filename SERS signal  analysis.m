% clear
clear;

% n= #file
n=13;

% file open and save the "wavelength" and "spectrum" 
for j=1:n
    eval(['[Wavelength, spec' num2str(j) '] = textread(''C:\Users\Kelly\Desktop\Master\sers_spec_code\m8-' num2str(j) '.txt'', ''%f%f'', ''delimiter'',''\t'')']);
end

% find the position of 715-745 in Wavelength
position730=find(Wavelength>715.5 & Wavelength<745.5);

% find max value of each spec
for i=1:n
    eval(['value' num2str(i) '=spec' num2str(i) '(position730)']); % capture the value of 715-745 wavelength
    eval(['max' num2str(i) '=max(value' num2str(i) ')']); % find max value in range 715-745
    eval(['max_array(i)=max' num2str(i)]); % save the max value in array
end

% save excel data
xlswrite('max_array.xls',max_array); 




