# Max/MSP Patches, Abstractions, Externals, RNBO, VSTs, and Ableton Max for Live 

## br.freeze.1.4



By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 

Repository for br.freeze.1.4, with all related files, can be found here: [https://github.com/guaguanco127/br.freeze](https://github.com/guaguanco127/br.freeze)  
Additional programs can be found here: [https://github.com/guaguanco127/plugins](https://github.com/guaguanco127/plugins)  


Versions 1.2, 1.3 and 1.4 were updated with Max 9. Version 1.1 was created with Max/MSP 8.5.6. 

## Links

[What's New in 1.4](#whats-new-in-14)  
[What's New in 1.3](#whats-new-in-13)  
[What's New in 1.2](#whats-new-in-12)  
[About](#About) 
[Ableton Max for Live Device](https://github.com/guaguanco127/br.freeze/tree/main/Ableton%20Max%20For%20Live) To use inside of Ableton Suite   
[Max/MSP Abstraction](https://github.com/guaguanco127/br.freeze/tree/main/MaxMSP%20Abstraction) To use as an abstraction within Max/MSP  


## What's New in 1.4

- **Feedback.** A new Feedback dial lets each new freeze blend with the one you are hearing instead of replacing it. At 0, a new freeze replaces the old one (as in 1.3). At 1, each Retrigger or detected attack is a 50/50 mix of the current freeze and the new sound, so older layers fade by half with every new freeze.
- **No clipping, no added distortion.** The blend happens on the frozen spectrum itself and is weighted so no frequency ever gets louder than the louder of the two sounds. No limiter or saturation is involved, so the sound is not colored.
- Turning Freeze on always starts a fresh freeze, whatever the Feedback setting.
- The helper file is now **br.solofreeze.pfft.1.4** (it replaces br.solofreeze.pfft). Copy the new one alongside the device or abstraction.

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

Only works as an abstraction or a device. External objects and RNBO not available yet. An extremely important file is included in each folder called "br.solofreeze.pfft.1.4" do not move or delete this file until you follow all instructions for installation. 
  
**Freeze:** On/Off, Bypass or Freeze.  
**Retrigger:** When the freeze is on, this will freeze the current stereo signal.  
**Mix Modes:** "Insert" interrupts the signal with the freeze, while "Gate" only allows the freeze to sound without passing through the dry signal during bypass.    
**Transient Detect:** When both "Freeze" and "Transient Detect" are on, the freeze will occur automatically based on the transient detection sensitivity settings. Each new attack triggers one freeze; a held or sustained note does not keep re-triggering, and the freeze captures the attack itself.   
**Transient Detect Sensitivity:** When both "Freeze" and "Transient Detect" are on, this sets how sudden a jump in level counts as an attack. Between 0. and 1.: 0. is the lowest sensitivity (only strong, sudden attacks), 1. is the most sensitive (softer attacks count too). The default is 0.5.  
**Feedback:** How much of the current freeze carries into the next Retrigger or detected attack. Between 0. and 1.: 0. replaces the freeze (no feedback), 1. blends the current freeze and the new sound 50/50. The default is 0.  
 
## <a name="Version"></a>Version History  

Version 1.4 added Feedback: each new freeze can blend with the current one (up to 50/50) instead of replacing it.  
Version 1.3 replaced the transient detector with an attack (onset) detector: one freeze per attack, held notes stay frozen, and each automatic freeze holds the attack.  
Version 1.2 lowered CPU use (the spectral processing switches off while bypassed), made the dry/freeze handover gap-free, timed each freeze from the sample rate, fixed Gate mode, and lightened the transient detector.  
Version 1.1 fixed an issue with stereo and using multiple instances of the abstraction 