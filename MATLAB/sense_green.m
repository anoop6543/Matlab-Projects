function a=sense_green(b)
a=zeros(4,5);
sense_prob=[6 6 2 6 6;
            6 6 6 6 2;
            6 2 6 6 6;
            6 2 2 6 6]/10;
temp=b.*sense_prob;
a=temp/sum(sum(temp));
end