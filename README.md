#Vocal Gender Classifier
This is the final project for NYU EL9173 Selected Topics in Signal Processing: Audio Content Analysis, by Cheng Hsun Lee and Bryan Cheng. The project is to detect and classify the singer's gender from the music.

##Background
The ideal goal in the project is to design a system that can recognize the singer's gender from the music. Consider to analyze the vocal sound, the instrument source should be removed before the analysis. Use PGM(Piecewise Gaussian Modeling) to grasp the singer's voice feature and then implement the classification with Muti Layer Perceptron and Decision Tree classifier. 


##Method
First we will try to use pure vocal data from existing online dataset, to make sure the feature extration and classification work properly without instrument.And then we will develop the vocal isolation for the mixed music, try to isolate the vocal sound before feature extraction and classification.

* Training and Testing Database
We will used some classified data from [MedleyDB](http://medleydb.weebly.com) for the fist step. After implementing the vocal extraction part, we can input any music from any souce.
* Feature Analysis with PGM(Piecewise Gaussian Modeling)
Use PGM to extract the acoustic feature from singer.
* Feature Classifier
We will try to use two classifiers to see which has better performance. 
  * Muti Layer Perceptron
  * Decision Tree
* Vocal Extraction
Reference to: [Teensy-Audio-Effect-Remove-Vocals](https://github.com/FrankBoesing/Teensy-Audio-Effect-Remove-Vocals)

##Project Management
###week 1 (4/20): 
Implement the PGM and the feature classifier and feed the pure vocal sound for classification.
###week 2 (4/27):
Develop the vocal extaction method in order to classify mixed music.
###week 3 (5/4) :
Accuracy Improvement

##Job Assignment
Vocal extaction from mixed music: Bryan Cheng
Feature Analysis and classification: Cheng Hsun Lee

##Conclusion
Detecting the gender of a singer has several potential applications. For example, gender dependent models are more accurate than gender independent ones in automatic speech recognition. Second, in terms of multimedia indexing, gender distinguishing helps classify data and label it in gender, the Gender Classifier can improve the efficency by giving the sorting work to computer. Gender classification can also be applied to data mining to find special classification targets.

##Reference
* Reference paper: [VOICE-BASED GENDER IDENTIFICATION IN MULTIMEDIA APPLICATIONS - Hadi Harb, Liming Chen](https://pdfs.semanticscholar.org/35d6/b269c99d0c7a27641a7489c4f13ecd8d5181.pdf)

* Mechine Learnging Tools: [WEKA](http://www.cs.waikato.ac.nz/ml/index.html)

* Audio Dateset: [MedleyDB](http://medleydb.weebly.com/)

