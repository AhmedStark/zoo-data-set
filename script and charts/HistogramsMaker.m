PlotBoxesMaker;

%Making histograms

hist=categorical(animalType,[1,2,3,4,5,6,7],{'mammal','bird','reptile','fish','amphibian','insects','invertebrates'});
typeHist=histogram(hist);

hairHist=histogram(zooData(:,13));