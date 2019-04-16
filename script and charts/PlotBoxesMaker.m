Summary;
%Making plot boxes to explain how each attribute is affecting classes

hairBP=boxplot(zooData(:,1),AnimalType);
feathersBP=boxplot(zooData(:,2),AnimalType);
eggsBP=boxplot(zooData(:,3),AnimalType);
milkBP=boxplot(zooData(:,4),AnimalType);
airborneBP=boxplot(zooData(:,5),AnimalType);
aquaticBP=boxplot(zooData(:,6),AnimalType);
predatorBP=boxplot(zooData(:,7),AnimalType);
toothedBP=boxplot(zooData(:,8),AnimalType);
backboneBP=boxplot(zooData(:,9),AnimalType);
breathesBP=boxplot(zooData(:,10),AnimalType);
venomousBP=boxplot(zooData(:,11),AnimalType);
finsBP=boxplot(zooData(:,12),AnimalType);
legsBP=boxplot(zooData(:,13),AnimalType);
tailBP=boxplot(zooData(:,14),AnimalType);
domesticBP=boxplot(zooData(:,15),AnimalType);
catsizeBP=boxplot(zooData(:,16),AnimalType);
