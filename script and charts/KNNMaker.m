DecisionTreeMaker;

%knn
knn=fitcknn(vars,classes,'NumNeighbors',2,'Standardize',1);

knnPredict=predict(knn,testVars);
%error
errorKnn=loss(knn,testVars,testClasses);

confusionKnn=confusionmat(knnPredict,testClasses);
confKnn=confusionchart(string(knnPredict),testClasses);
title("KNN confusion matrix");

%precision and recall

for i =1:size(confusionKnn,1)
   recall(i)=confusionKnn(i,i)/sum(confusionKnn(i,:));
end
recall( isnan(recall))=0;

knnRecall=sum(recall)/size(confusionKnn,1);

for i =1:size(confusionKnn,1)
    precision(i)=confusionKnn(i,i)/sum(confusionKnn(:,i));
end

knnPrecision=sum(precision)/size(confusionKnn,1);