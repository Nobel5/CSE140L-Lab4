module Lab4Minimized(
input a,
input b,
input c,
input d,
input e,
input f,
input g,
input h,
input i,
input j,
input k,
output out
);
	assign out = ((~a)&(~b)&(~c)&(~d)&(~e)&(~f)&g&(~h)&(~i)&j)|((~a)&(~b)&c&d&e&f&h&(~i)&j&(~k))|((~b)&c&(~d)&e&f&g&h&(~i)&j&(~k))|(a&(~b)&e&f&(~g)&h&(~i)&j&(~k))|((~a)&(~c)&(~d)&(~e)&g&h&(~i)&j&(~k))|((~a)&(~b)&(~d)&(~e)&f&g&h&i&j)|((~a)&(~b)&(~d)&(~e)&f&g&i&j&k)|(b&c&d&(~e)&(~f)&(~g)&(~h)&(~i)&(~j)&(~k))|((~a)&(~c)&d&e&(~g)&(~h)&(~i)&(~j)&(~k))|(a&b&(~c)&(~d)&e&f&(~g)&(~h)&(~i)&(~k))|(a&b&c&d&e&(~h)&(~i)&(~j)&(~k))|((~a)&b&(~c)&(~d)&(~e)&(~f)&g&(~h)&(~i)&(~j)&(~k))|(a&(~b)&(~c)&d&e&(~f)&(~h)&(~i)&(~k))|((~b)&d&(~e)&f&g&(~h)&(~i)&(~j)&(~k))|((~a)&b&c&(~d)&e&f&g&(~h)&(~i))|((~a)&(~b)&c&(~d)&(~e)&(~g)&h&(~i)&(~j))|((~a)&b&(~c)&(~d)&e&(~g)&h&(~i)&(~j)&(~k))|(a&c&(~d)&e&(~f)&(~g)&h&(~i)&(~j)&(~k))|(a&(~b)&c&(~e)&(~f)&g&h&(~i)&(~j)&(~k))|((~a)&b&c&d&(~e)&(~f)&g&h&(~i)&(~j)&(~k))|(a&(~b)&(~c)&(~d)&f&g&h&(~i)&(~j)&(~k))|(a&b&(~c)&(~e)&(~f)&(~g)&(~h)&i&(~j)&(~k))|(a&(~b)&c&d&(~e)&f&(~h)&i&(~j)&(~k))|((~a)&c&(~d)&e&(~f)&g&(~h)&i&(~j)&(~k))|(b&(~c)&d&e&(~f)&g&i&(~j)&(~k))|(a&b&c&(~d)&(~e)&(~h)&i&(~j)&(~k))|(b&(~c)&(~d)&e&f&g&(~h)&i&(~j)&(~k))|(a&(~b)&c&d&(~e)&(~f)&(~g)&h&i&(~j))|((~a)&(~b)&c&(~d)&(~e)&f&(~g)&h&(~j)&(~k))|(a&b&(~c)&(~e)&f&(~g)&h&i&(~j)&(~k))|((~a)&b&c&d&(~e)&(~g)&h&i&(~j)&(~k))|(a&c&(~d)&e&f&(~g)&h&i&(~j)&(~k))|((~a)&b&(~c)&d&e&f&(~g)&h&i&(~k))|((~a)&(~b)&c&d&e&f&(~g)&h&(~j)&(~k))|(a&b&c&e&f&(~g)&h&i&(~j)&(~k))|((~a)&(~b)&(~c)&(~d)&e&g&h&i&(~k))|(a&b&(~c)&e&(~f)&g&h&(~j)&(~k))|((~a)&(~b)&(~c)&e&f&g&h&i&(~k))|(a&b&(~c)&d&e&g&h&i&(~j)&(~k))|((~a)&b&c&d&e&f&g&h&i&(~j))|((~a)&b&(~c)&(~d)&(~e)&(~g)&(~h)&(~i)&j&(~k))|((~a)&(~b)&(~c)&d&(~e)&f&(~g)&(~h)&(~i)&j&(~k))|((~a)&(~c)&d&e&(~f)&g&(~h)&(~i)&j)|((~a)&b&(~d)&e&f&g&(~h)&(~i)&j)|(a&(~b)&(~c)&(~d)&(~f)&(~g)&h&(~i)&j&(~k))|(b&(~c)&d&(~f)&(~g)&h&(~i)&j&(~k))|(a&b&c&e&(~f)&h&(~i)&(~k))|((~a)&(~b)&c&(~d)&(~e)&(~g)&(~h)&i&j&(~k))|(b&c&d&(~e)&(~f)&(~g)&(~h)&i&j&(~k))|(a&b&c&(~d)&e&(~f)&(~g)&(~h)&i&j)|(a&(~b)&c&d&e&(~f)&(~g)&i&j&(~k))|(a&(~b)&c&(~d)&e&f&(~h)&i&j)|((~a)&b&c&(~d)&e&f&(~g)&j&(~k))|((~a)&(~b)&(~c)&d&e&(~g)&(~h)&i&j&(~k))|(a&b&c&(~d)&(~e)&(~f)&g&(~h)&i&(~k))|(b&(~c)&(~d)&(~e)&f&g&(~h)&i&j&(~k))|(a&c&(~d)&e&f&g&(~h)&i&j&(~k))|(a&b&(~c)&d&e&f&g&(~h)&i&j&(~k))|((~a)&(~b)&(~c)&d&(~e)&(~f)&(~g)&h&j&(~k))|((~a)&b&c&e&(~f)&(~g)&h&i&j&(~k))|((~a)&c&(~d)&e&f&(~g)&h&i&j&(~k))|(b&c&(~d)&e&f&(~g)&h&i&(~k))|(a&(~b)&(~c)&d&e&(~f)&g&h&i&(~k))|(a&b&c&(~d)&(~e)&f&g&h&i&j)|((~b)&(~c)&(~d)&e&f&g&h&i&j&(~k))|((~a)&(~c)&e&f&g&h&i&j&(~k))|(a&b&c&d&e&f&g&h&i&j&(~k))|((~a)&c&(~d)&e&(~f)&(~g)&(~h)&(~i)&(~j))|((~b)&(~c)&d&e&(~f)&(~g)&(~h)&(~i)&(~j))|(a&(~b)&(~c)&d&e&(~g)&(~h)&(~i)&(~j)&k)|((~a)&b&(~c)&d&(~e)&(~f)&g&(~h)&(~i)&k)|((~b)&(~c)&(~d)&e&(~f)&g&(~h)&(~i)&(~j)&k)|(a&b&(~c)&e&(~f)&(~h)&(~i)&(~j)&k)|((~a)&b&(~c)&(~d)&(~e)&f&g&(~h)&(~i)&(~j)&k)|(a&(~b)&d&(~e)&f&g&(~h)&(~i)&(~j))|(a&b&(~c)&(~d)&e&g&(~h)&(~i)&(~j)&k)|((~b)&c&(~d)&(~e)&(~g)&h&(~i)&(~j)&k)|((~a)&(~b)&(~c)&d&(~e)&(~g)&h&(~i)&(~j)&k)|((~b)&(~c)&(~d)&e&(~f)&(~g)&h&(~j)&k)|(a&b&c&(~d)&e&(~f)&(~g)&h&(~i)&(~j))|((~b)&(~c)&d&(~e)&f&(~g)&h&(~i)&(~j))|((~a)&(~b)&c&(~d)&f&(~g)&h&(~i)&(~j)&k)|(a&(~b)&c&d&e&f&(~g)&h&(~j)&k)|(a&(~c)&(~d)&(~e)&(~f)&g&h&(~i)&(~j)&k)|((~b)&(~c)&d&e&(~f)&g&h&(~i)&(~j)&k)|(a&b&(~c)&d&e&f&h&(~i)&(~j)&k)|((~a)&(~b)&c&(~d)&(~e)&(~f)&(~g)&(~h)&i&(~j)&k)|(b&c&d&(~f)&(~g)&(~h)&i&(~j)&k)|(a&b&d&(~e)&f&(~g)&(~h)&i&k)|((~b)&c&(~d)&e&f&(~g)&(~h)&i&(~j)&k)|(a&(~b)&(~d)&e&(~f)&g&(~h)&(~j)&k)|((~a)&(~b)&d&e&(~f)&g&(~h)&i&(~j)&k)|(a&b&c&e&f&g&(~h)&i&(~j)&k)|(a&(~b)&(~c)&(~d)&(~f)&(~g)&h&i&(~j)&k)|(a&b&(~c)&d&(~f)&(~g)&h&i&(~j)&k)|((~b)&c&d&(~e)&(~f)&h&i&(~j)&k)|((~b)&(~d)&e&(~f)&(~g)&h&i&(~j)&k)|(a&b&c&(~d)&e&(~f)&g&h&i&k)|((~a)&(~c)&(~d)&e&(~f)&(~g)&(~h)&(~i)&j&k)|(a&(~b)&(~c)&d&e&(~f)&(~g)&(~h)&(~i))|((~a)&(~b)&(~c)&d&e&f&(~h)&(~i)&j&k)|(a&(~b)&c&d&f&(~g)&(~h)&(~i)&j&k)|(b&(~c)&(~d)&(~e)&(~f)&h&(~i)&j&k)|((~a)&(~b)&c&d&(~e)&(~f)&(~g)&(~i)&j&k)|((~a)&(~b)&c&(~d)&e&(~f)&(~g)&h&(~i)&j)|((~a)&b&c&d&e&f&h&(~i)&j&k)|(a&(~b)&c&(~d)&(~f)&g&h&(~i)&j&k)|(b&(~c)&e&(~f)&g&h&(~i)&j&k)|((~a)&(~b)&c&(~e)&f&g&h&(~i)&k)|(a&c&(~d)&(~e)&(~g)&(~h)&i&j&k)|(a&(~c)&d&(~e)&(~f)&(~g)&(~h)&i&j&k)|((~a)&c&(~d)&e&(~f)&(~h)&i&j&k)|((~b)&(~c)&(~d)&e&f&(~h)&i&j&k)|(a&(~b)&(~c)&d&e&g&(~h)&i&j&k)|(a&b&c&d&e&g&(~h)&i&k)|((~a)&b&(~c)&(~e)&f&(~g)&h&i&j&k)|(a&(~b)&c&d&(~e)&f&(~g)&h&i&j)|((~a)&(~b)&c&d&e&f&(~g)&h&i&j&k)|((~a)&(~b)&d&e&(~f)&g&h&i&j&k)|((~a)&(~b)&(~c)&e&(~f)&(~g)&(~h)&(~j)&(~k))|(a&(~b)&d&e&(~f)&(~g)&(~h)&(~i)&(~j)&(~k))|(a&(~b)&(~c)&(~e)&f&(~g)&(~h)&(~i)&(~j)&(~k))|(a&b&(~c)&d&f&g&(~h)&(~i)&(~j)&(~k))|((~b)&c&(~e)&f&(~g)&h&(~i)&(~j)&(~k))|(a&(~c)&(~d)&e&(~f)&g&h&(~i)&(~j)&(~k))|((~a)&(~b)&c&d&(~e)&f&h&(~i)&(~j))|((~a)&(~b)&(~c)&(~d)&e&f&h&(~i)&(~j)&(~k))|(a&b&c&d&f&g&h&(~i)&(~j)&(~k))|(a&(~c)&(~d)&(~e)&f&(~g)&(~h)&i&(~j)&(~k))|(a&b&c&(~d)&f&(~g)&(~h)&i&(~j)&(~k))|(a&b&c&(~d)&(~f)&g&(~h)&i&(~j)&(~k))|(b&c&(~d)&(~e)&(~f)&(~g)&h&i&(~k))|((~a)&b&c&(~d)&e&(~f)&g&h&(~j)&(~k))|((~a)&(~b)&c&d&(~e)&(~f)&(~h)&(~i)&j&(~k))|((~a)&b&c&e&(~f)&(~g)&(~h)&(~i)&j&(~k))|((~a)&b&c&(~d)&(~e)&f&(~i)&j&(~k))|(a&(~b)&c&(~e)&f&(~g)&(~h)&(~i)&j&(~k))|(a&b&c&(~d)&e&f&(~g)&(~h)&(~i)&j)|(a&b&(~c)&d&e&f&(~g)&(~h)&(~i)&j)|(a&c&d&(~e)&(~f)&(~g)&h&(~i)&j&(~k))|(a&(~b)&(~c)&d&f&(~g)&h&(~i)&j&(~k))|(a&(~b)&c&d&(~e)&(~f)&h&(~i)&j&(~k))|((~a)&(~c)&d&e&f&g&h&(~i)&j)|((~a)&b&(~c)&d&(~e)&(~f)&(~g)&(~h)&i&j)|((~b)&(~c)&(~d)&(~e)&f&(~g)&(~h)&i&j&(~k))|((~a)&c&d&(~e)&f&(~g)&(~h)&i&j&(~k))|(a&b&(~c)&(~d)&e&f&(~g)&(~h)&i&j)|(a&(~b)&c&(~d)&e&(~f)&g&(~h)&j&(~k))|(b&c&d&e&(~f)&g&(~h)&i&j&(~k))|((~a)&c&(~d)&(~e)&f&g&(~h)&j&(~k))|((~a)&b&d&(~e)&g&h&i&j&(~k))|((~a)&(~b)&(~c)&(~e)&f&(~g)&(~h)&(~i)&(~j)&k)|((~b)&c&d&e&(~f)&g&(~h)&(~i)&(~j)&k)|((~a)&b&(~c)&(~d)&(~e)&(~f)&g&h&(~j)&k)|(a&c&d&(~e)&g&h&(~i)&(~j)&k)|(a&b&c&e&(~f)&(~g)&(~h)&i&(~j)&k)|(a&b&d&e&(~f)&(~g)&(~h)&(~j)&k)|((~a)&c&d&e&(~f)&(~g)&(~h)&i&(~j)&k)|(a&(~b)&c&e&f&(~g)&(~h)&i&(~j)&k)|(b&(~c)&d&(~e)&(~f)&(~g)&(~h)&j&k)|(a&b&c&(~d)&e&(~g)&(~h)&(~i)&j&k)|(a&(~b)&(~c)&(~d)&e&(~f)&g&(~h)&(~i)&j)|((~a)&(~b)&(~c)&(~e)&f&g&(~h)&(~i)&j&k)|((~b)&(~d)&(~e)&f&(~g)&h&(~i)&j&k)|((~a)&(~b)&(~c)&(~e)&f&(~g)&h&(~i)&j&k)|((~b)&c&(~d)&(~e)&(~f)&g&h&(~i)&j&k)|(a&b&(~d)&(~e)&(~f)&g&h&(~i)&k)|((~a)&b&(~c)&(~e)&(~f)&g&(~i)&j&k)|((~a)&(~b)&(~c)&(~d)&e&(~f)&g&h&(~i)&j)|((~a)&b&c&(~d)&e&(~f)&g&(~i)&k)|((~a)&(~b)&c&d&(~e)&(~f)&(~h)&i&j&k)|(a&(~b)&(~c)&(~d)&e&(~f)&(~g)&(~h)&i)|((~a)&(~c)&d&e&(~f)&(~g)&(~h)&i&j&k)|(a&(~c)&e&f&(~g)&(~h)&i&j&k)|(a&b&c&d&(~e)&(~f)&g&i&j&k)|(b&(~c)&d&(~e)&f&g&(~h)&i&j&k)|((~a)&(~b)&(~c)&d&e&f&g&(~h)&j&k)|(a&b&c&(~d)&(~f)&(~g)&i&j&k)|(a&b&c&(~d)&(~e)&(~g)&h&i&k)|((~a)&b&(~c)&d&e&(~f)&g&h&i&k)|(a&b&(~c)&(~d)&(~e)&g&h&i&j&k)|((~a)&(~b)&c&d&(~e)&(~f)&g&(~h)&(~j)&(~k))|((~a)&(~b)&(~c)&(~d)&(~e)&f&(~g)&(~i)&(~j)&(~k))|((~a)&(~b)&d&(~e)&(~f)&(~g)&(~h)&i&(~j)&(~k))|(a&(~b)&(~c)&d&e&(~g)&(~h)&i&(~j)&(~k))|(b&c&d&e&(~f)&(~g)&(~h)&i&(~j))|(a&c&(~d)&(~e)&(~f)&(~h)&i&(~j)&(~k))|(a&(~b)&(~c)&(~d)&(~f)&g&(~h)&i&(~j))|((~b)&(~c)&(~d)&(~e)&g&(~h)&i&(~j)&(~k))|((~a)&(~b)&(~d)&(~e)&f&g&(~h)&i&(~j)&(~k))|(a&(~b)&(~c)&(~d)&e&(~f)&(~g)&i&(~k))|(a&(~b)&(~c)&(~e)&(~f)&g&h&i&(~j)&(~k))|(a&b&c&(~e)&(~f)&g&h&i&(~j)&(~k))|(a&(~b)&(~d)&(~e)&f&(~g)&(~h)&(~i)&j&(~k))|(a&(~b)&c&(~d)&(~e)&(~f)&g&(~h)&(~i)&j)|(a&b&(~d)&e&(~f)&g&(~i)&j&(~k))|((~b)&(~c)&(~d)&e&(~g)&h&(~i)&j&(~k))|((~a)&c&(~e)&f&(~g)&h&(~i)&j&(~k))|((~a)&b&c&(~e)&f&h&(~i)&j&(~k))|((~b)&(~c)&d&e&f&g&h&(~i)&j)|((~a)&b&c&d&(~f)&g&(~h)&i&j&(~k))|(a&(~b)&c&(~e)&f&g&(~h)&i&j&(~k))|(a&(~b)&c&(~d)&(~e)&(~g)&h&i&j&(~k))|((~a)&b&c&(~d)&f&(~g)&h&j&(~k))|((~a)&(~b)&c&d&(~e)&f&(~g)&h&j&(~k))|(a&(~c)&d&e&f&(~g)&h&i&j&(~k))|((~a)&b&c&(~d)&(~e)&(~f)&h&i&j&(~k))|(a&b&c&d&(~e)&(~f)&g&h&i&(~k))|(a&(~b)&(~c)&(~d)&(~f)&(~g)&(~h)&(~i)&(~j)&k)|((~a)&(~b)&c&d&e&(~f)&h&(~i)&(~j)&k)|((~a)&c&(~e)&f&g&h&(~i)&(~j)&k)|((~a)&b&c&(~d)&f&g&h&(~i)&(~j)&k)|((~a)&(~b)&(~c)&(~d)&f&(~g)&h&i&(~j)&k)|(b&c&(~d)&e&f&(~g)&h&i&(~j))|((~a)&(~b)&(~c)&(~d)&(~e)&(~f)&g&i&(~j)&k)|((~a)&b&c&(~d)&(~e)&g&h&i&(~j)&k)|(a&(~b)&(~c)&(~d)&e&g&i&(~j)&k)|((~a)&b&(~c)&e&(~f)&h&i&(~j)&k)|(a&c&d&(~e)&(~f)&(~g)&(~h)&(~i)&j&k)|(a&b&c&(~d)&(~e)&f&(~g)&(~h)&(~i)&k)|((~a)&b&(~e)&(~f)&g&(~h)&(~i)&j&k)|(b&(~c)&d&e&f&g&(~h)&(~i)&j&k)|(a&b&d&(~e)&f&g&h&(~i)&j)|((~a)&b&c&d&e&(~f)&(~g)&(~h)&j&k)|((~a)&b&(~c)&d&e&(~g)&(~h)&i&j&k)|(a&b&(~c)&(~d)&(~e)&(~f)&h&i&j)|(a&b&(~c)&d&e&f&(~g)&h&i&j)|(a&(~b)&c&(~e)&(~f)&g&h&i&k)|(a&(~b)&(~d)&(~e)&(~f)&(~g)&(~h)&(~i)&(~j)&(~k))|((~a)&(~b)&d&e&(~f)&(~g)&h&(~i)&(~j)&(~k))|(a&(~c)&d&(~e)&(~f)&g&h&(~i)&(~j)&(~k))|((~a)&b&e&(~f)&g&(~h)&i&(~j)&(~k))|(a&c&d&(~e)&f&g&h&i&(~j)&(~k))|(a&(~c)&(~d)&(~e)&f&(~g)&h&i&j&(~k))|((~a)&b&(~c)&d&e&(~g)&h&(~i)&(~j)&k)|(a&(~b)&d&(~e)&(~f)&g&i&(~j)&k)|((~b)&c&d&(~e)&(~f)&g&i&(~j)&k)|((~a)&(~b)&(~c)&(~d)&e&f&g&i&k)|(a&(~b)&(~c)&d&e&f&g&(~h)&i&(~j))|((~a)&b&c&(~d)&e&(~g)&h&i&(~j)&k)|((~a)&(~b)&(~c)&d&e&(~f)&(~g)&h&i&(~j))|((~a)&b&(~c)&(~d)&(~e)&f&(~g)&h&(~j)&k)|((~a)&(~b)&(~c)&d&(~e)&f&h&i&(~j)&k)|((~a)&(~b)&c&d&e&(~f)&(~h)&(~i)&j&k)|(a&(~b)&c&d&(~e)&(~f)&(~h)&(~i)&j&k)|((~a)&b&c&d&(~e)&f&(~h)&(~i)&j&k)|(a&(~b)&(~c)&d&(~e)&f&g&h&j&k)|(a&(~c)&(~d)&e&f&g&h&(~i)&j&k)|((~b)&c&d&(~e)&f&g&(~h)&i&j&k)|((~a)&b&(~c)&(~d)&e&(~f)&(~g)&h&i&j)|(a&(~b)&c&(~d)&(~e)&f&g&h&i&(~j))|((~a)&(~b)&c&d&e&(~f)&g&(~i)&j&(~k))|(a&b&(~c)&(~d)&f&(~g)&h&(~i)&j)|((~a)&b&(~c)&(~d)&e&(~f)&(~h)&i&j&(~k))|((~a)&(~b)&(~c)&(~d)&e&g&i&j&(~k))|(a&(~c)&(~d)&e&(~f)&(~g)&h&j&(~k))|(a&(~b)&d&(~e)&f&g&h&i&j&(~k))|((~b)&(~c)&(~d)&(~e)&(~g)&(~h)&(~i)&(~j)&k)|(b&c&(~e)&f&(~g)&(~h)&(~i)&(~j)&k)|((~b)&(~c)&d&(~e)&f&g&h&i&k)|((~a)&(~b)&c&(~e)&f&g&h&(~j)&k)|((~a)&b&(~c)&(~d)&e&f&(~g)&h&(~i))|((~a)&(~b)&(~c)&d&(~f)&g&(~h)&i&j&(~k))|((~a)&b&(~c)&(~d)&(~f)&(~g)&(~h)&(~i)&(~j)&k)|(a&(~b)&c&(~e)&f&(~h)&(~i)&(~j)&k)|((~a)&b&(~d)&e&(~g)&(~h)&(~i)&(~j)&k)|(b&(~c)&(~d)&f&(~g)&h&(~i)&(~j)&k)|(a&(~b)&c&(~d)&e&f&g&h&(~j)&k)|((~a)&b&(~c)&(~d)&(~f)&g&(~h)&i&j&k)|(c&(~d)&(~e)&f&g&h&i&j&k)|(a&(~b)&c&(~d)&e&f&g&(~i)&(~j))|((~a)&b&(~d)&(~e)&f&g&h&(~i)&j)|((~a)&(~b)&(~c)&(~e)&(~f)&g&(~h)&i&j&k)|(a&(~b)&c&d&f&g&(~h)&(~j)&(~k))|((~a)&b&(~c)&(~d)&e&f&(~i)&j&k)|((~a)&(~b)&c&d&e&f&g&(~h)&i&(~j))|((~a)&b&(~c)&(~d)&(~e)&f&(~g)&(~h)&j&k)|((~a)&(~b)&c&d&e&g&(~h)&(~i)&k)|((~a)&b&c&d&f&g&(~h)&i&(~j)&k)|(c&(~d)&(~e)&f&(~g)&(~h)&i&j&k)|((~a)&b&(~c)&d&(~e)&f&g&(~h)&i&(~j))|((~a)&(~b)&c&(~d)&f&g&(~h)&(~i)&j&k)|((~a)&b&(~c)&d&(~f)&g&i&(~j)&(~k))|((~a)&b&(~c)&d&(~e)&(~f)&(~g)&h&(~j)&(~k))|(a&b&(~c)&d&(~e)&(~f)&h&(~i)&(~k))|(b&(~c)&(~d)&(~e)&(~f)&g&h&(~i)&j);
endmodule
