#Vocal Gender Classifier
### By Cheng Hsun Lee and Bryan Cheng
Vocal Gender Classifier is a final project for EL9173 Selected Topics in Signal Processing: Audio Content Analysis. The goal of this project is to detect the vocal gender from instrumental mix source.

##Background
The ideal goal in this project is to design a system that can recognize the gender of the vocal singer in music. The first step of analyzing the vocal gender is to remove the instrumental part of the source and extract solely the vocals. After getting the vocals, Piecewise Gaussian Modeling (PGM) is implemented to grasp the singer's voice features. Finally the classification will be implemented with both Muti Layer Perceptron and Decision Tree classifier.


##Method
First, we will try to use pure vocal data from existing online dataset to make sure the feature extraction and classification work properly without instrument interfered. Then we will develop the vocal isolation to deal with the mixed music, and try to isolate the vocal sound before feature extraction and classification.

* Training and Testing Database - Classified data from [MedleyDB](http://medleydb.weebly.com) will be used for the first dataset. After implementing the vocal extraction, other input sources with not only vocals will be used.
* Feature Analysis with PGM (Piecewise Gaussian Modeling) - Use PGM to extract the acoustic feature from singers.
  * PGM (Piecewise Gaussian Modeling) : The PGM features capture the dynamics of the human voice and the distribution of the energy in each frequency channel that contain in long term features, 200ms for instance.
* Feature Classifier -  Two classifiers will be used and analyze which has better performance. 
  * Multi Layer Perceptron
  * Decision Tree
* Vocal Extraction - A vocal isolation will be developed to attenuate the instrument sound and also highlight the vocal sound before feeding the audio to the classifier.
	The vocal isolation reference to: [Github: Teensy-Audio-Effect-Remove-Vocals](https://github.com/FrankBoesing/Teensy-Audio-Effect-Remove-Vocals)
    

##Project Management
###week 1 (4/20): 
Implement the PGM and the feature classifier and feed pure vocal sounds for classification.
###week 2 (4/27):
Develop the vocal extraction method in order to classify instrumental-mixed music.
###week 3 (5/4):
Accuracy Improvement
###week 4 (5/11):
Demo and presentation

##Job Assignment
Vocal extraction from mixed music: Bryan Cheng

Feature Analysis and classification: Cheng Hsun Lee

Presentation and Report: Bryan Cheng, Cheng Hsun Lee

##Conclusion
Detecting the gender of a singer has several potential applications. For example, gender dependent models are more accurate than gender independent ones in automatic speech recognition. Second, in terms of multimedia indexing, distinguish gender helps classifying data and label it in gender. The Gender Classifier can improve the efficiency by giving the sorting work to the computer. Gender classification can also be applied to data mining to find special classification targets. This project implements the gender classifier, which can classify music from the gender of the vocals automatically. 

##Reference
* Reference Paper: [VOICE-BASED GENDER IDENTIFICATION IN MULTIMEDIA APPLICATIONS - Hadi Harb, Liming Chen](https://pdfs.semanticscholar.org/35d6/b269c99d0c7a27641a7489c4f13ecd8d5181.pdf)

* Mechine Learnging Tools: [WEKA](http://www.cs.waikato.ac.nz/ml/index.html)

* Audio Dateset: [MedleyDB](http://medleydb.weebly.com/)

