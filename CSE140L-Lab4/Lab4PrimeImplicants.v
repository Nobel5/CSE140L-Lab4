module Lab4PrimeImplicants(
input a,
input b,
input c,
input d,
input e,
input f,
input g,
output out
);
	assign out = ((~a)&(~b)&(~c)&(~e)&(~f)&(~g))|(a&(~b)&(~d)&(~e)&(~f)&(~g))|(a&(~b)&(~c)&(~d)&(~f)&(~g))|(a&b&(~c)&(~e)&(~f)&(~g))|(a&b&d&(~e)&(~f)&(~g))|(a&b&(~c)&d&(~f)&(~g))|(a&b&(~c)&d&(~e)&(~g))|(a&(~b)&(~c)&(~d)&e&(~g))|(b&(~c)&d&e&(~f)&(~g))|((~a)&(~b)&c&(~d)&f&(~g))|(b&(~c)&d&(~e)&f&(~g))|(a&(~b)&c&d&f&(~g))|(a&(~c)&(~d)&e&f&(~g))|(b&(~c)&(~d)&e&f&(~g))|((~a)&(~b)&c&e&f&(~g))|((~b)&c&d&e&f&(~g))|((~a)&b&c&d&e&f)|((~b)&(~c)&d&(~e)&(~f)&g)|(a&b&(~d)&e&(~f)&g)|(a&c&(~d)&e&(~f)&g)|(a&b&c&e&(~f)&g)|(a&b&c&d&e&g)|((~a)&b&d&e&f&g)|(a&c&d&e&f&g)|(b&c&d&e&f&g)|((~c)&(~d)&(~e)&(~f)&(~g))|((~a)&b&(~c)&(~d)&(~g))|(a&(~b)&c&(~e)&(~g))|(a&(~b)&c&(~d)&(~e))|((~a)&(~b)&d&(~f)&(~g))|((~a)&(~b)&d&(~e)&(~f))|((~a)&(~b)&(~c)&d&(~e))|(c&d&(~e)&(~f)&(~g))|((~a)&c&d&(~f)&(~g))|((~a)&c&d&(~e)&(~f))|((~a)&b&e&(~f)&(~g))|(b&c&(~d)&e&(~f))|((~a)&d&e&(~f)&(~g))|((~a)&c&d&e&(~g))|((~a)&b&(~d)&(~e)&f)|((~a)&b&(~c)&(~e)&f)|((~a)&b&(~c)&(~d)&f)|(c&(~d)&(~e)&f&(~g))|((~b)&c&(~d)&(~e)&f)|((~a)&c&(~d)&(~e)&f)|((~a)&(~c)&d&(~e)&f)|(a&(~b)&(~c)&e&f)|(a&(~b)&d&e&f)|(a&(~b)&c&(~d)&g)|((~a)&d&(~e)&(~f)&g)|((~a)&(~c)&d&(~e)&g)|((~a)&(~b)&d&(~e)&g)|((~b)&(~d)&(~e)&f&g)|((~b)&(~c)&(~d)&f&g)|((~a)&(~d)&(~e)&f&g)|((~a)&(~c)&(~e)&f&g)|((~a)&(~c)&(~d)&f&g)|((~a)&(~b)&(~e)&f&g)|(a&(~b)&(~d)&f&g)|((~a)&b&(~c)&f&g)|(a&(~b)&e&f&g);
endmodule
