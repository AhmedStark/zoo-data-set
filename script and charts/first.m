%loading and preparing data

load('zoo.mat');
T=importdata('zoo.data');
animalType=T.data(:,17);

animalTypesArr=["mammal" 'bird' 'reptile' 'fish' 'amphibian' 'insects' 'invertebrates'];

AnimalType={};
 for i=1:length(animalType)
   AnimalType{i,1}=animalTypesArr(animalType(i));
 end
 
zooData=table2array(ZooTable);