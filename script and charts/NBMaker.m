KNNMaker;

%NB

NB=fitcnb(vars,classes,'Distribution', 'mn');

nbPredict=predict(NB,testVars);
%error
errorNB=loss(NB,testVars,testClasses);

confusionNB=confusionmat(nbPredict,testClasses);
confNB=confusionchart(string(nbPredict),testClasses);
title("Naïve Bayes confusion matrix");

%precision and recall

for i =1:size(confusionNB,1)
   recall(i)=confusionNB(i,i)/sum(confusionNB(i,:));
end
recall( isnan(recall))=0;

NBrecall=sum(recall)/size(confusionNB,1);

for i =1:size(confusionNB,1)
    precision(i)=confusionNB(i,i)/sum(confusionNB(:,i));
end

NBPrecision=sum(precision)/size(confusionNB,1);