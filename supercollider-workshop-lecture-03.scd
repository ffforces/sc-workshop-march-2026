




//lesson 3




(
SynthDef(\synth1, {arg freq=60, amp=0.1;
var envshape= Env([0,1,0],[3,3]);
var env=EnvGen.kr(envshape);
var snd=Saw.ar(freq,mul:amp)*env;
Out.ar(0,snd!2) ;

}).add;
)



Synth(\synth1, [\freq, 60.midicps]);
60.midicps;

Synth(\synth1, [\freq, 62.midicps]);
Synth(\synth1, [\freq, 64.midicps]);
Synth(\synth1, [\freq, 65.midicps]);


///////////////

//mousex

(
SynthDef(\synth1, {arg freq=60, pw=0.2;
var snd, lfo;
snd=Pulse.ar(freq,pw,mul:0.1);
snd=RLPF.ar(snd, MouseX.kr(40, 2000), MouseY.kr(0.0,1.0));
Out.ar(0,snd!2);

}).add;
)


Synth(\synth1);



ExampleFiles.child;



Buffer.freeAll;
b=Buffer.read(s, ExampleFiles.child);
b=Buffer.read(s, "D:/tee/Aani2/ios-pitka-mono.wav");

b.plot;

Env([0,1,2,0],[3,3,5]).plot;
Env.new(levels: [0, 1, 0.9, 0], times: [0.1, 0.5, 1], curve: [-5, 0, -5]).plot;

//Platform.resourceDir +/+ "sounds/a11wlk01.wav"


b=Buffer.read(s, ExampleFiles.child);
(
SynthDef(\sample,{arg rate=0.1;
var sig=PlayBuf.ar(1,b.bufnum,loop:1)!2;
Out.ar(0, sig);
}).add;
)

Synth(\sample);






b=Buffer.read(s, ExampleFiles.child);
(
SynthDef(\sample,{arg rate=0.1;
var lfo=LFNoise2.kr(0.3).range(-2.0,2.0);
var sig=PlayBuf.ar(1,b.bufnum,lfo,loop:1)!2;
Out.ar(0, sig);
}).add;
)

Synth(\sample);

//granular synth

b=Buffer.read(s, ExampleFiles.child);



(
SynthDef(\granular,{arg rate=0.1;
var lfo=LFNoise2.kr(1.8).range(-2.0,2.0);
var sig=GrainBuf.ar(2,Impulse.kr(4),1,b.bufnum,lfo);
Out.ar(0, sig);
}).add;
)

Synth(\granular);



///////////////////////////




(
SynthDef(\synth1, {arg freq=60, pw=0.2, att=2, rel=2;
var envshape= Env([0,1,0],[att,rel]);
var env=EnvGen.kr(envshape);
var snd=Pulse.ar(freq,pw,mul:0.1)*env;
Out.ar(0,snd!2) ;
}).add;
)

Synth(\synth1);

40.midicps;

(
~pat1=Pbind(\instrument, \synth1,
	\freq, Pwhite(40,60,inf).midicps,
	\dur,4,

);
)


~pat1.play;
//ctrl/cmd dot to stop



///////////
//homework:



//try out all the values of the GrainBuf with different
//lfo values in different parameters, rate, dur, pos

(
SynthDef(\granular,{arg rate=0.1;
var lfo=LFNoise2.kr(1.8).range(-2.0,2.0);
var sig=GrainBuf.ar(2,Impulse.kr(4),1,b.bufnum,lfo);
Out.ar(0, sig);
}).add;
)

Synth(\granular);
























