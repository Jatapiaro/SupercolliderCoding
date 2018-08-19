/**
 |--------------------------------------------------------------------------
 | Supercollider as an OPP leguage
 |--------------------------------------------------------------------------
 |
 | Objects
 |
*/

7.class; // Integer
0.89.class; // Float

/*
* In OOP we can create classes
* In generall all objects are instanciated with the keyword 'new'
*/


w = Window.new();
w.background = Color.rand();
w.front();
w.close();

//----
"salsa".reverse()
[3, 4, 6].squared();
[1, 10, 50, \things, "stuff"]
x = { 1 + 4.5 };

x; // A function
x.value(); //The value of that function


(
w = Wind     ow.new("My New Window");
w.front();
)


//Supercollider DONT HAVE OPERATOR PRECEDENCE
x = 3 + 4 * 5;
y = 3 + ( 4 * 5);

//Method chaining
w = Window.new("My New Window").front().background = Color.rand();



