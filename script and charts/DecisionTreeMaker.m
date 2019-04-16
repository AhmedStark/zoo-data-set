ScatterPlotMaker;


%tree
ZooTable=[ZooTable,AnimalType];
randSample=ZooTable(randperm(end),:);
vars=randSample(1:60,1:16);
classes=randSample(1:60,18);

testVars=randSample(61:101,1:16);
testClasses=table2array(randSample(61:101,18));


tree=fitctree(vars,classes);

treePredict=predict(tree,testVars);

%error
errorTree=loss(tree,testVars,testClasses);

confusionTree=confusionmat(treePredict,testClasses);
confTree=confusionchart(string(treePredict),testClasses);
title("Tree confusion matrix");
view(tree,'mode','graph');

%precision and recall

for i =1:size(confusionTree,1)
   recall(i)=confusionTree(i,i)/sum(confusionTree(i,:));
end
recall( isnan(recall))=0;

treeRecall=sum(recall)/size(confusionTree,1);

for i =1:size(confusionTree,1)
    precision(i)=confusionTree(i,i)/sum(confusionTree(:,i));
end

treePrecision=sum(precision)/size(confusionTree,1);