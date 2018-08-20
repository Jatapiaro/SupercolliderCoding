/**
 |--------------------------------------------------------------------------
 | UGen (Unit generators)
 |--------------------------------------------------------------------------
 |
 | Objects that produce, generate or manipulate and audio signal
 |
 |
*/

(
~lfSawGenerator = {
	var signal;
	signal = [
		LFSaw.ar(440, 0, 1, 0),
		LFSaw.ar(440, 0, 1, 0)
	];
}
)

~lfSawGenerator.plot();
~lfSawPlay = ~lfSawGenerator.play();
~lfSawPlay.free();

(
x = {
	arg sawFreq = 2;
	var sig, freq, amp;
	/*
	* Scale the output on this range
	* Outputing values from 200 to 1000
	*/
	freq = LFNoise0.kr(sawFreq, 1).exprange(50, 2000);
	amp = SinOsc.kr(0.5,0).exprange(0.001, 0.1);
	sig = [
		SinOsc.ar(freq, 0, amp, 0),
		SinOsc.ar(freq, 0, amp, 0)
	]
}
)
{LFNoise0.kr(8).exprange(50, 2000)}.plot(2);
{SinOsc.ar(440, 0, 0.1, 0)}.plot();
x.plot();
~sound = x.play();
~sound.set(\sawFreq, rrand(60, 600));
~sound.free();






(
x = {
	arg sawFreq = 1;
	var sig, freq, amp;
	/*
	* Scale the output on this range
	* Outputing values from 200 to 1000
	*/
	freq = LFNoise0.kr(sawFreq).exprange(50, 2000);
	amp = SinOsc.kr(8).exprange(0.01, 0.1);
	sig = [
		SinOsc.ar(freq, 0, amp, 0),
		SinOsc.ar(freq, 0, amp, 0)
	]
}
)
{LFNoise0.kr(8).exprange(50, 2000)}.plot(2);
{SinOsc.ar(440, 0, 0.1, 0)}.plot();
x.plot();
~sound = x.play();
~sound.set(\sawFreq, rrand(60, 600));
~sound.free();