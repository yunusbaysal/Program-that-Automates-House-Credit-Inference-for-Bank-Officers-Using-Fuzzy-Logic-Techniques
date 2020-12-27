% for House
Homefis = readfis('Home.fis');
m = input('enter the Market value (0-1000):');
l = input('enter the Location value(0-10):');
%plotfis(h);
Homeout= evalfis(Homefis,[m l]);
disp(['Home output: ',num2str(Homeout)]);
HomeVal=num2str(Homeout);  

%for Applicant
Appfis = readfis('Applicant.fis');
Assest = input('enter the Assest value (0-1000):');
Income = input('enter the Income value(0-100):');
Appout=evalfis(Appfis,[Assest Income]);
disp(['Applicant output: ',num2str(Appout)]);
ApplicantVal =num2str(Appout); 

HouseVal = str2double(HomeVal);
AppVal = str2double(ApplicantVal);

%for Credit
ReadCredit = readfis('Credit.fis');
Interest = input('enter the Interest value (0-10):');
outCredit=evalfis(ReadCredit,[HouseVal Income Interest AppVal]);
CreditValue=num2str(outCredit);
disp(['Credit Output: ',CreditValue]);

