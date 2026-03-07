





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
Pulse.ar(lfo,lfo2,mul:0.1)!2}.play;
)


// homework

// maybe try three different oscillators
// from the help brower:
// ugens/generators/deterministic
// ugens/generators/stochastic

//check first three supercollider tutorials from eli fieldsteel
//https://www.youtube.com/@elifieldsteel
//https://www.youtube.com/watch?v=yRzsOOiJ_p4&list=PLPYzvS8A_rTaNDweXe6PX4CXSGq4iEWYC
//https://www.youtube.com/watch?v=ntL8QDOhhL8&list=PLPYzvS8A_rTaNDweXe6PX4CXSGq4iEWYC&index=2
//https://www.youtube.com/watch?v=oTBcGPXH6K0&list=PLPYzvS8A_rTaNDweXe6PX4CXSGq4iEWYC&index=3 




