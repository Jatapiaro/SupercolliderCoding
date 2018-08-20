/**
 |--------------------------------------------------------------------------
 | Booting the serve
 |--------------------------------------------------------------------------
 |
 | To wake up the server we need to boot
 | cmd + b
 |
*/
Server.local; /* The same as */ s;
Server.local.boot();

/**
 |--------------------------------------------------------------------------
 | Making the first sound
 |--------------------------------------------------------------------------
 |
 | cmd + . (To stop sound)
 | cmd + m (Meter)
 |
*/

(
x = {
	var signal;
	/*
	* Freq: How many cicles per second (440 as default)
	* Phase: Where the cicles starts (Between 0 and 2π)
	* Mul: Amplitude scaling (default 1)
	* Add: The offset
	*/
	signal = [
		SinOsc.ar(62.midicps, 0, 1, 0),
		SinOsc.ar(60.midicps, 0, 1, 0)
	]
};
)
x.plot();
p = x.play();
p.free();

/*
* Currently this is monophonic
*/

s.meter;
s.scope;

FreqScope.new();


(

x = {
	arg mute = 1;
	var signal;
	/*
	* Freq: How many cicles per second (440 as default)
	* Phase: Where the cicles starts (Between 0 and 2π)
	* Mul: Amplitude scaling (default 1)
	* Add: The offset
	*/
	signal = [
		SinOsc.ar(62.midicps, 0, 0.5, 0),
		SinOsc.ar(62.midicps, 0, 0.5, 0),
	] * mute;
};

y = {
	arg mute = 1;
	var signal;
	signal = [
		PinkNoise.ar(0.2)
	] * mute;
}

)

~sound = x.play();
~sound.set(\mute, rrand(0, 0.5));
~sound.free();

(a = x.play(); b = y.play();)
(a.free(); b.free();)

s.plotTree;
