# Max/MSP Abstraction: br.freeze.abs.1.6  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.freeze.1.6, with all related files, can be found here: [https://github.com/guaguanco127/br.freeze](https://github.com/guaguanco127/br.freeze)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

Versions 1.2 through 1.6 were updated with Max 9. Version 1.1 was created with Max/MSP 8.5.6. 

## Table of Contents 

[What's New in 1.6](#whats-new-in-16)  
[What's New in 1.5](#whats-new-in-15)  
[What's New in 1.4](#whats-new-in-14)  
[What's New in 1.3](#whats-new-in-13)  
[What's New in 1.2](#whats-new-in-12)  
[About](#About)   
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use)  
[State outlet](#State)  
[Example Patch](#Example)  
[Version History](#Version) 

 

## What's New in 1.6

- **Mix Mode is now "Thru" / "Aux" (was "Insert" / "Gate").** "Thru" (0) lets the dry sound pass while the effect is off; "Aux" (1) is silent until you turn it on, for use on a send/return. Only the names changed: the numbers, the default and the sound are exactly as in 1.5, so 1.6 swaps in without rewiring.

## What's New in 1.5

- **Dry/Wet.** A new Dry/Wet dial (0 - 100 %). It only acts while the freeze is on: lower values keep the dry sound playing under the freeze. At 100 % (the default) it sounds exactly like 1.4. Bypass is unchanged: Insert still passes the dry sound, Gate stays silent. The blend is equal-power and every move glides over 20 ms, so it never clicks.
- **State outlet** (abstraction only): a new last outlet sends every setting as a named message the moment it changes (`freeze`, `mode`, `detect`, `sensitivity`, `feedback`, `drywet`). See [State outlet](#State).
- Dry/Wet is a new last inlet; every other inlet and the L/R outlets are unchanged, so 1.5 swaps in for 1.4 without rewiring.
- **Example patch:** _br.freeze.example.1.5 with three tabs: freeze (pick a source and freeze it by hand), layers (driven by messages into the inlets; each attack adds a layer) and State outlet.
- The controls have readable names (Freeze, Retrigger, Mix Mode, Detect, Sensitivity, Feedback, Dry/Wet), so presets and pattr show them clearly.
- The helper file is still **br.solofreeze.pfft.1.4**.

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
**Mix Mode:** "Thru" (the default) lets the dry sound pass through while the freeze is bypassed, and the freeze takes over when you freeze. Use it on a track. "Aux" is silent while bypassed, so you only hear the freeze. Use it on a send/return.    
**Transient Detect:** When both "Freeze" and "Transient Detect" are on, the freeze will occur automatically based on the transient detection sensitivity settings. Each new attack triggers one freeze; a held or sustained note does not keep re-triggering, and the freeze captures the attack itself.   
**Transient Detect Sensitivity:** When both "Freeze" and "Transient Detect" are on, this sets how sudden a jump in level counts as an attack. Between 0. and 1.: 0. is the lowest sensitivity (only strong, sudden attacks), 1. is the most sensitive (softer attacks count too). The default is 0.5.  
**Feedback:** How much of the current freeze carries into the next Retrigger or detected attack. Between 0. and 1.: 0. replaces the freeze (no feedback), 1. blends the current freeze and the new sound 50/50. The default is 0.  
**Dry/Wet:** How much of the freeze you hear while it is on. Between 0 and 100 %: 100 is only the freeze, lower values keep the dry sound playing under it (equal-power blend). It does nothing while bypassed. The default is 100.  

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming. This allows you to parlay your Max knowledge into more efficient work in the future, and will help you create programming systems that are modular and easier to maintain.

## <a name="Install"></a>How To Install

1. Make sure you have Max 9 installed in your computer. And, make sure you are using a Max patch that is inside of a folder.  

2. Copy and paste br.freeze.abs.1.6.maxpat inside of the same folder as the Max patch you are using. To try it first, copy _br.freeze.example.1.6.maxpat too.

3. Also, copy and paste the file called br.solofreeze.pfft.1.4 into the same folder. If this file is already there, then there is no reason to copy and paste it. **The abstraction will not work without this file.**     

4. In the Max patch you are using, create an object called br.freeze.abs.1.6 

5. Alternatively, you could also create this inside of a bpatcher object and use all of the preset UI objects featured inside the abstraction. To do this, create a bpatcher object. Then, go inside of its inspector, select "choose" next to "Patcher File" and select the br.freeze.abs.1.6.maxpat located within the same folder as your project. 


## <a name="Use"></a>How To Use

The first two inlets are for the left and the right stereo signals. The first two outlets are the left and right outputs; the third is the [State outlet](#State).

Every control has its own inlet. Sending a value to an inlet moves its on-screen control too, so the display always matches the sound. Hover over an inlet in Max to see the same information.

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left audio in | Signal | | |
| 2 | Right audio in | Signal | | |
| 3 | Freeze | Int | 0 = Bypass, 1 = Freeze | 0 |
| 4 | Retrigger | Bang |  |  |
| 5 | Mix Mode | Int | 0 = Thru, 1 = Aux | 0 |
| 6 | Transient Detect | Int | 0 = Off, 1 = On | 0 |
| 7 | Sensitivity | Float | 0 - 1 | 0.5 |
| 8 | Feedback | Float | 0 - 1 (0 = replace, 1 = 50/50 blend) | 0 |
| 9 | Dry/Wet | Float | 0 - 100 % (only while frozen) | 100 |

Retrigger freezes a new moment while the freeze is on (it does nothing while bypassed). Transient Detect triggers one freeze per attack. Feedback sets how much of the current freeze carries into each Retrigger or detected attack.

Double click on the object and you can see inside of the object. This way you can study how it was built.

## <a name="State"></a>State outlet

The last outlet sends the current settings as named messages the moment they change, for example `freeze 1`, `mode 0`, `drywet 70.`. Clicking a control, numbers into the inlets and preset recalls all show up; repeats are filtered out. Use it to keep a display, Mira or another patch in sync. Pick them out by name with [route freeze mode detect sensitivity feedback drywet], not by position, so your patch keeps working if a later version adds controls.

| Name | Control | Values |
|---|---|---|
| freeze | Freeze | 0 = Bypass, 1 = Freeze |
| mode | Mix Mode | 0 = Thru, 1 = Aux |
| detect | Transient Detect | 0 = Off, 1 = On |
| sensitivity | Sensitivity | 0 - 1 |
| feedback | Feedback | 0 - 1 |
| drywet | Dry/Wet | 0 - 100 % |

Each message carries the same value its inlet takes, so a State message can go straight back into an inlet. Retrigger is an action, not a setting, so it is not sent.

## <a name="Example"></a>Example Patch

Open _br.freeze.example.1.6.maxpat (keep it in the same folder as br.freeze.abs.1.6 and br.solofreeze.pfft.1.4). The first page introduces br.freeze; the tabs at the top hold the examples. Turn on the audio with the toggle, then raise the gain slider, which starts muted.

## <a name="Version"></a>Version History  

Version 1.6 (10-09-2026) renamed Mix Mode to Thru / Aux.  
Version 1.5 added Dry/Wet (only while frozen), a State outlet and an example patch.  
Version 1.4 added Feedback: each new freeze can blend with the current one (up to 50/50) instead of replacing it.  
Version 1.3 replaced the transient detector with an attack (onset) detector: one freeze per attack, held notes stay frozen, and each automatic freeze holds the attack.  
Version 1.2 lowered CPU use (the spectral processing switches off while bypassed), made the dry/freeze handover gap-free, timed each freeze from the sample rate, fixed Gate mode, and lightened the transient detector.  
Version 1.1 fixed an issue with stereo and using multiple instances of the abstraction  

    



 

## <a name="Credits"></a>Credits

The spectral freeze is built on Jean-François Charles' freeze-frame technique (one FFT frame captured with jit.catch~ inside pfft~), from "A Tutorial on Spectral Sound Processing Using Max/MSP and Jitter", Computer Music Journal 32(3), 2008. Retrigger, Thru/Aux, the attack detector, Feedback blending and the low-CPU switching are by Brian Riordan.
