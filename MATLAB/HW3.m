clc
close all

I=0;
bad_hours=0;
max_avail_stored=112000;
stored_energy=max_avail_stored;
load_energy=500;
solar_energy=ETR(1:8760);

while I<8759
       I=I+1;
    input_energy=solar_energy(I);
    net_energy=input_energy-load_energy;
    stored_energy=stored_energy+net_energy;
   
    if stored_energy>max_avail_stored;
       stored_energy=max_avail_stored;
    end
    if stored_energy<0
       stored_energy=0;
       bad_hours=bad_hours+1;
    end
end

availibility=(1-(bad_hours/I));
bad_hours;

        
            
            
       
       
       
       
       
       
   