% ѧ������
x=[170.1 179.0 171.5 173.1 174.1 177.2 170.3 176.2 163.7 175.4 ...
   163.3 179.0 176.5 178.4 165.1 179.4 176.3 179.0 173.9 173.7 ...
   173.2 172.3 169.3 172.8 176.4 163.7 177.0 165.9 166.6 167.4 ...
   174.0 174.3 184.5 171.9 181.4 164.6 176.4 172.4 180.3 160.5 ...
   166.2 173.5 171.7 167.9 168.7 175.6 179.6 171.6 168.1 172.2];
alpha=0.05;
[mu sigma muci sigmaci]=normfit(x,alpha) 