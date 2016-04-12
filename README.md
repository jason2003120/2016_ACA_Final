#Vocal Gender Classifier
This is the final project for EL9173 Selected Topics in Signal Processing: Audio Content Analysis, the project is to detect the singer's gender from the music.

##Background
The ideal goal in the project is to design a system that can recognize the singer's gender from the music. Consider to analyze the vocal sound, the instrument source should be removed before the classifacation. Detecting the gender of a singer has several potential applications. For example, gender dependent models are more accurate than gender independent ones in automatic speech recognition. Second, in terms of multimedia indexing, gender distinguishing helps classify data and label it in gender, the Gender Classifier can improve the efficency by giving the sorting work to computer. Gender classification can also be applied to data mining to find special classification targets.


##Method
* Vocal Extraction
[Teensy-Audio-Effect-Remove-Vocals](https://github.com/FrankBoesing/Teensy-Audio-Effect-Remove-Vocals)
* Feature Analysis with PGM(Piecewise Gaussian Modeling)

* Feature Classifier
  * Gaussian Mixture Models
  * Muti Layer Perceptron
  * Decision Tree
* Music Source

##Project Management
###week 1: 
Vocal extaction
###week 2:
Implement the PGM and the feature classifier
###week 3:


##Conclusion

##Reference
[VOICE-BASED GENDER IDENTIFICATION IN MULTIMEDIA APPLICATIONS - Hadi Harb, Liming Chen](https://pdfs.semanticscholar.org/35d6/b269c99d0c7a27641a7489c4f13ecd8d5181.pdf)
