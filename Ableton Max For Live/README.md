# Ableton Max for Live device: br.freeze.1.3  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.freeze.1.3, with all related files, can be found here: [https://github.com/guaguanco127/br.freeze](https://github.com/guaguanco127/br.freeze)  
Additional programs can be found here: [https://github.com/guaguanco127/plugins](https://github.com/guaguanco127/plugins)

Versions 1.2 and 1.3 were updated with Max 9. Version 1.1 was created with Max/MSP 8.5.6. 

## Table of Contents 

[What's New in 1.3](#whats-new-in-13)  
[What's New in 1.2](#whats-new-in-12)  
[About](#About)  
[What is a Max for Live Device?](#M4L)  
[How To Install](#Install)  
[Version History](#Version)

## What's New in 1.3

- **Freezes on each attack.** Transient Detect now listens for attacks (a sudden jump in level) instead of loudness: every new attack you play triggers one freeze, and a held or sustained note stays frozen instead of re-freezing every 100 ms.
- **The freeze holds the attack.** An automatic freeze waits until the attack is fully inside the analysis window, so the frozen sound contains the attack itself rather than the moment before it.
- **Sensitivity** now sets how sudden a jump has to be to count as an attack (0 = only strong attacks, 1 = softer attacks too). The default of 0.5 suits most playing.
- No third-party objects; the detector is built into the patch and does no work while Transient Detect is off.

## What's New in 1.2

- **Much lower CPU.** The spectral processing now switches itself off completely while the freeze is bypassed, and back on the moment you freeze. Resting CPU dropped to about 1%, and about 4% while freezing.
- **Smooth handover, no gap.** Turning the freeze on keeps the dry sound playing until the frozen sound actually arrives, then crossfades into it. Turning it off crossfades straight back to the dry sound.
- **Fresher freezes at any sample rate.** The moment a freeze is captured is now worked out from the sample rate, so each freeze contains only sound from after you pressed it.
- **Gate mode fixed.** In Gate mode, no dry signal is heard while the freeze is bypassed.
- **Lighter transient detector** (it polls the input less often; detection speed is unchanged).

## <a name="About"></a>About

This is a spectral Max/MSP abstraction, and Ableton Max for Live device that allows the user to do a spectral freeze of a stereo signal. Additionally, a transient detector option is available. 

Currently works in any sample rate or bit depth.

Only works as an abstraction or a device. External objects and RNBO not available yet. An extremely important file is included in each folder called "br.solofreeze.pfft" do not move or delete this file until you follow all instructions for installation. 
  
**Freeze:** On/Off, Bypass or Freeze.  
**Retrigger:** When the freeze is on, this will freeze the current stereo signal.  
**Mix Modes:** "Insert" interrupts the signal with the freeze, while "Gate" only allows the freeze to sound without passing through the dry signal during bypass.    
**Transient Detect:** When both "Freeze" and "Transient Detect" are on, the freeze will occur automatically based on the transient detection sensitivity settings. Each new attack triggers one freeze; a held or sustained note does not keep re-triggering, and the freeze captures the attack itself.   
**Transient Detect Sensitivity:** When both "Freeze" and "Transient Detect" are on, this sets how sudden a jump in level counts as an attack. Between 0. and 1.: 0. is the lowest sensitivity (only strong, sudden attacks), 1. is the most sensitive (softer attacks count too). The default is 0.5.  


## <a name="M4L"></a>What Is a Max For Live Device?

Max For Live brings the power and flexibility of Max to Ableton Live. Max For Live gives you access to hundreds of exclusive custom plug-ins (Live Devices) as well as the tools to build your own. These can be MIDI and audio effects, audio and video synthesizers, 3D Jitter visuals, as well as tools that interact with the Live application itself, via the Live API.

## <a name="Install"></a>How To Install

1. Make sure you have the Ableton Live Suite installed in your computer. This was tested on version 11. Make sure Ableton is turned off while installing. 

2. For Macintosh:  
Go to your user folder  
Then Music > Ableton > User Library > Presets > Audio Effects  
Copy and paste br.freeze.1.3.amxd into that folder

3. For Windows: \Users\[username]\Documents\Ableton\User Library\Presets\Audio Effects\Max Audio Effect  

4. Also, copy and paste the file called br.solofreeze.pfft into the same folder. If this file is already there, then there is no reason to copy and paste it. **The device will not work without this file.**    
  
5. Open Ableton Live. On the left-hand side, look for Max for Live > Max Audio Effect and then the name of this device.

6. Either double click on the device, or drag/drop it onto the track where you wish to use it.  

## <a name="Version"></a>Version History  

Version 1.3 replaced the transient detector with an attack (onset) detector: one freeze per attack, held notes stay frozen, and each automatic freeze holds the attack.  
Version 1.2 lowered CPU use (the spectral processing switches off while bypassed), made the dry/freeze handover gap-free, timed each freeze from the sample rate, fixed Gate mode, and lightened the transient detector.  
Version 1.1 fixed an issue with stereo and using multiple instances of the abstraction 
    



 





