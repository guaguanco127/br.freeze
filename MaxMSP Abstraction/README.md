# Max/MSP Abstraction: br.freeze.abs.1.1  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.freeze.1.1, with all related files, can be found here: [https://github.com/guaguanco127/br.freeze](https://github.com/guaguanco127/br.freeze)  
Additional programs can be found here: [https://github.com/guaguanco127/plugins](https://github.com/guaguanco127/plugins)

These files were created with Max/MSP version 8.5.6. 

## Table of Contents 

[About](#About)   
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use)  
[Version History](#Version) 

 

## <a name="About"></a>About

This is a spectral Max/MSP abstraction, and Ableton Max for Live device that allows the user to do a spectral freeze of a stereo signal. Additionally, a transient detector option is available. 

Currently works in any sample rate or bit depth.

Only works as an abstraction or a device. External objects and RNBO not available yet. An extremely important file is included in each folder called "br.solofreeze.pfft" do not move or delete this file until you follow all instructions for installation. 
  
**Freeze:** On/Off, Bypass or Freeze.  
**Retrigger:** When the freeze is on, this will freeze the current stereo signal.      
**Mix Modes:** "Insert" interrupts the signal with the freeze, while "Gate" only allows the freeze to sound without passing through the dry signal during bypass.    
**Transient Detect:** When both "Freeze" and "Transient Detect" are on, the freeze will occur automatically based on the transient detection sensitivity settings. Detections cannot occur faster than 100 ms.   
**Transient Detect Sensitivity:** When both "Freeze" and "Transient Detect" are on, this will determine how sensitive the transient detection is. Between 0. and 1., 0. is the lowest sensitivity, while 1. is the most sensitive. 

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming. This allows you to parlay your Max knowledge into more efficient work in the future, and will help you create programming systems that are modular and easier to maintain.

## <a name="Install"></a>How To Install

1. Make sure you have Max/MSP 8 installed in your computer. And, make sure you are using a Max patch that is inside of a folder.  

2. Copy and paste br.freeze.abs.1.1.maxpat inside of the same folder as the Max patch you are using. 

3. Also, copy and paste the file called br.solofreeze.pfft into the same folder. If this file is already there, then there is no reason to copy and paste it. **The abstraction will not work without this file.**     

4. In the Max patch you are using, create an object called br.freeze.abs.1.1 

5. Alternatively, you could also create this inside of a bpatcher object and use all of the preset UI objects featured inside the abstraction. To do this, create a bpatcher object. Then, go inside of its inspector, select "choose" next to "Patcher File" and select the br.freeze.abs.maxpat located within the same folder as your project. 


## <a name="Use"></a>How To Use

The first two inlets are for the left and the right stereo signals. 

The 3rd inlet turns the effect on and off. Once it turns on it freezes the stereo signal at that moment. It takes an integer, 0 = bypass, 1 = freeze. 

The 4th inlet can receive a bang message to freeze another moment while the freeze is currently on. This feature does not work while the freeze is on bypass mode. 

The 5th inlet is the mix mode. It takes an integer, 0 = insert, while interrupts the dry signal and replaces it with the freeze when activated. 1 = gate, which means the dry signal is never heard while in bypass mode. 

The 6th inlet turns the transient detector on and off. It takes an integer, 0 = off, 1 = on. Detections cannot occur faster than 100 ms. 

The 7th inlet is the transident detect sensitivity. It takes a float between 0.0 and 1.0. 0 is no sensitivity, 1 is full sensitivity. 

Double click on the object and you can see inside of the object. This way you can study how it was built.

## <a name="Version"></a>Version History  

Version 1.1 fixed an issue with stereo and using multiple instances of the abstraction  

    



 





