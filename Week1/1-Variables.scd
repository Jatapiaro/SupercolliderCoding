/*
* All the lines with a ';'
* and cmd+enter is evaluated
*/
2 + 5;
5.cubed;
8.sqrt;


/**
 |--------------------------------------------------------------------------
 | Variables
 |--------------------------------------------------------------------------
 |
 | About variables
 |
*/

/*
* All the lines enclosed in '( )'
* and cmd+enter evaluates the entire block
* and does not even mather where do you do the command
*/

(
var number;
number = 5;
number = number * 2;
)

/*
* Variables:
* If we take out the previous code outside the '( )' scope
* and execute each line one by one
* we will get a nil, but we can do the following
*/

~number = 5; //Global variable
n = 5; //[a-z] letters are also global variables;

~number;
n;



