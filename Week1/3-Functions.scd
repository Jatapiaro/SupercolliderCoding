/**
 |--------------------------------------------------------------------------
 | Functions
 |--------------------------------------------------------------------------
 |
 |
 |
*/

(~raizCuadrada = {
	arg value;
	value = value.sqrt;
})
~raizCuadrada.value([1,2,4]);

(~example = {
	arg val = 1, val2 = 1;
	(val + val2) / 2;
})
~example.value();
~example.value(10, 5);
~example.numArgs;
