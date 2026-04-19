

//lesson 04

(
SynthDef(\synth1, {arg freq=60, pw=0.2, att=2, rel=2,amp=0.1;
var envshape= Env([0,1,0],[att,rel]);
var env=EnvGen.kr(envshape,doneAction:2);
//var snd=Pulse.ar(freq,pw,mul:0.1)*env;
var snd=SinOsc.ar(freq, mul:amp)*env;
Out.ar(0,snd!2) ;
}).add;
)

Synth(\synth1);

40.midicps;


Scale.directory;
Tuning.directory

(
Pdef(\pat1,
Pbind(\instrument, \synth1,
	\scale, Scale.pelog,
	\degree, Prand([0, 2,3,5,6,-12,-12,-12],inf),
	\dur,0.2,
	\att, Prand([0.3,0.5,0.6],inf)*0.01,
	\rel,0.3 ,
	\amp, 0.1,
	//\pw, Pwhite(0.2,0.4,inf),

)
);
)

Pdef(\pat1).play;
Pdef(\pat1).stop;





(
Pdef(\pat1,
Pbind(\instrument, \synth1,
	\scale, Scale.pelog,
	\degree, Prand([0, 2,3,5,6,-12,-12,-12],inf),
	\dur,0.2,
	\att, Prand([0.3,0.5,0.6],inf)*0.01,
	\rel,0.3 ,
	\amp, 0.1,
	//\pw, Pwhite(0.2,0.4,inf),

)
).stop;



Pdef(\pat2,
Pbind(\instrument, \synth1,
	\scale, Scale.pelog,
	\degree, Prand([0, 2,3,5,6],inf),
	\dur,2,
	\att, Prand([0.3,0.5,0.6],inf)*2,
	\rel,2,
	\amp, Pwhite(0.0,0.04,inf),
	//\pw, Pwhite(0.2,0.4,inf),

)
).stop;
)




(
Pdef(\pat1,
Pbind(\instrument, \synth1,
	//\scale, Scale.pelog,
	\degree, Prand([0,1,2,3,1,5,-2],inf).degreeToKey(Scale.pelog,4),
	\dur,0.2,
	\att, Prand([0.3,0.5,0.6],inf)*0.01,
	\rel,0.3 ,
	\amp, 0.1,

	//\pw, Pwhite(0.2,0.4,inf),

)
).stop;
)







//nodeproxy

Ndef(\a,{SinOsc.ar(LFTri.kr(LFTri.kr(2).range(0.1,50)).range(600,100),mul:0.1)!2}).play;


Ndef(\a).fadeTime=6;



Ndef(\a,{SinOsc.ar(rrand(40,1000),mul:0.1)!2}).play;


Ndef(\a,{WhiteNoise.ar(0.05)!2}).play;


Ndef(\a).fadeTime=1;


(
Ndef(\a,{arg freq=70;
	var mod=SinOsc.ar(freq,mul:LFTri.kr(1).range(0.1,2000));
	SinOsc.ar(freq+mod,mul:0.06)!2}).stop;

)

// miika bytebeat
(
Ndef(\bytebeat, {
    var t, sig;
    t = Sweep.ar(0, 8000);
    sig = (t * ((t >> 8) & (t >> 4)));
    // 8-bit magic
    sig = (sig % 256) / 128 - 1;
    sig ! 2 * 0.2;
}).stop;
)











