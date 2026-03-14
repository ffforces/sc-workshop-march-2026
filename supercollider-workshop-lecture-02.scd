





//workshop lecture 01


//sclang
//sc ide integrated developed environment
//scsynth

// windows/linux evaluating is ctrl enter
// mac evaluating is cmd enter

(
"hello world".postln;
)

10.rand;
rrand(10, 40);
32.rrand(400);

[20, 30, 70];

[20, 30, 70,50,60].scramble;
[20, 30, 70,50,60].choose;

SinOsc
WhiteNoise

(
{WhiteNoise.ar(0.1)}.play;
)

1!12;


(
{
var lfo = LFTri.kr(100.1).range(100,300);
SinOsc.ar(lfo,mul:0.1)!2}.play;
)



(
{
var lfo = LFTri.kr(20.1).range(60,300);
var lfo2 = LFTri.kr(0.3).range(0.0,1.0);
Pulse.ar(lfo,lfo2,mul:0.1)!2}.play;
)


(
{
var lfo3 = LFTri.kr(0.4).range(0.2,100.0);
var lfo = LFTri.kr(lfo3).range(60,300);
var lfo2 = LFTri.kr(0.3).range(0.0,1.0);
Pulse.ar(lfo,lfo2,mul:0.1)!2;

}.play;
)


// homework

// maybe try three different oscillators
// from the help brower:
// ugens/generators/deterministic
// ugens/generators/stochastic


//check the eli fieldsteel
// first three tutorials
// https://www.youtube.com/@elifieldsteel

// https://www.youtube.com/watch?v=yRzsOOiJ_p4&list=PLPYzvS8A_rTaNDweXe6PX4CXSGq4iEWYC

// https://www.youtube.com/watch?v=yRzsOOiJ_p4&list=PLPYzvS8A_rTaNDweXe6PX4CXSGq4iEWYC

// https://www.youtube.com/watch?v=ntL8QDOhhL8&list=PLPYzvS8A_rTaNDweXe6PX4CXSGq4iEWYC&index=2



///xyz
//~synth


// lecture 2!
// 14.03.2026

(
var num1=20.postln;
)


a=10;
b=100;
a;
a+b;

~number1=20;
~synth+a;

(
SynthDef(\synth1, {
var lfo3 = LFTri.kr(0.4).range(0.2,100.0);
var lfo = LFTri.kr(lfo3).range(60,300);
var lfo2 = LFTri.kr(0.3).range(0.0,1.0);
var snd=Pulse.ar(lfo,lfo2,mul:0.1)!2;
Out.ar(0,snd);

}).add;
)

x=Synth(\synth1);
x.play;



(
SynthDef(\synth1, {arg freq=300, pw=0.2;
var snd=Pulse.ar(freq,pw,mul:0.1)!2;
Out.ar(0,snd);

}).add;
)

x=Synth(\synth1);
x.set(\freq, 60);
x.set(\pw,0.09);
x.set(\freq, 600);
x.set(\freq, 200);

~synth=Synth(\synth1);
~synth.set


x=Synth(\synth1, [\freq, 300,\pw,0.1]);

f=Synth(\synth1, [\freq, 500,\pw,0.1]);



(
SynthDef(\synth1, {arg freq=300, pw=0.2;
	var snd=Pulse.ar(freq,pw,mul:0.1) !2;
	Out.ar(0,snd) ;

}).add;
)



(
SynthDef(\synth1, {arg freq=60, pw=0.2;
var env1= Env([0,1],[10]);
var env2=EnvGen.kr(env1);
var snd=Pulse.ar(freq,pw,mul:0.1)*env2;
Out.ar(0,snd!2) ;

}).add;
)



x=Synth(\synth1);

x.set(\freq, 60);
x.set(\pw,0.09);
x.set(\freq, 600);
x.set(\freq, 200);


(
SynthDef(\synth1, {arg freq=60, pw=0.2;
var env1= Env([0,1,0],[5,5]);
var env2=EnvGen.kr(env1);
var snd=Pulse.ar(freq,pw,mul:0.1)*env2;
Out.ar(0,snd!2) ;

}).add;
)

Synth(\synth1, [\freq, 300,\pw,0.5]);
Synth(\synth1, [\freq, 500,\pw,0.5]);
Synth(\synth1, [\freq, 100,\pw,0.5]);
Synth(\synth1, [\freq, 600,\pw,0.5]);



(
SynthDef(\synth1, {arg freq=60, pw=0.2;
//var impulse=Impulse.kr(1);
var env1= Env([0,1,0],[5,5]);
var env2=EnvGen.kr(env1);
var snd=Pulse.ar(freq,pw,mul:0.1)*env2;
Out.ar(0,snd!2) ;

}).add;
)


(
SynthDef(\synth1, {arg freq=60, pw=0.2;
var env1= Env([0,1,0],[5,5]);
var env2=EnvGen.kr(env1);
var snd=Pulse.ar(freq,pw,mul:0.1)*env2;
var lfo=LFTri.kr(0.8).range(100,1000);
snd=LPF.ar(snd, lfo);
Out.ar(0,snd!2) ;

}).add;
)

Synth(\synth1);


(
SynthDef(\synth1, {arg freq=60, pw=0.2;
var env1, env2, snd, lfo;
env1= Env([0,1,0],[5,5]);
env2=EnvGen.kr(env1);
snd=Pulse.ar(freq,pw,mul:0.1)*env2;
lfo=LFTri.kr(0.8).range(100,1000);
snd=LPF.ar(snd, lfo);
Out.ar(0,snd!2) ;

}).add;
)




// homework

// try to make a different synthdef with a different
// oscillator (sinosc, saw, sinoscfb or something else)
// followin the logic of synthdef building

// check eli's tutorial 3
// https://www.youtube.com/watch?v=LKGGWsXyiyo&list=PLPYzvS8A_rTaNDweXe6PX4CXSGq4iEWYC&index=4


































