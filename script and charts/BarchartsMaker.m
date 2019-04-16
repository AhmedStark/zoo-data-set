HistogramsMaker;



%Making bar graphs
mammalNumber = find(animalTypesArr=="mammal");
mammalIndexs=find(animalType==mammalNumber);
xx=zooData(mammalIndexs,1:16);
mammalSum=sum(xx);

birdNumber = find(animalTypesArr=="bird");
birdIndexs=find(animalType==birdNumber);
xx=zooData(birdIndexs,1:16);
birdSum=sum(xx);

reptileNumber = find(animalTypesArr=="reptile");
reptileIndexs=find(animalType==reptileNumber);
xx=zooData(reptileIndexs,1:16);
reptileSum=sum(xx);



animalsBars=[mammalSum;birdSum;reptileSum];
comparison=bar(animalsBars);