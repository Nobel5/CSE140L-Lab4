module Lab4QuineMcCluskey(
input a,
input b,
input c,
input d,
input e,
input f,
input g,
output out
);
	assign out = ((~a)&(~b)&(~c)&(~e)&(~f)&(~g))|(a&(~b)&(~c)&(~d)&(~f)&(~g))|(a&b&(~c)&(~e)&(~f)&(~g))|(a&b&d&(~e)&(~f)&(~g))|(a&b&(~c)&d&(~f)&(~g))|(a&b&(~c)&d&(~e)&(~g))|(a&(~b)&(~c)&(~d)&e&(~g))|(b&(~c)&d&e&(~f)&(~g))|(b&(~c)&d&(~e)&f&(~g))|(a&(~c)&(~d)&e&f&(~g))|(b&(~c)&(~d)&e&f&(~g))|((~a)&b&c&d&e&f)|((~a)&b&d&e&f&g)|((~c)&(~d)&(~e)&(~f)&(~g))|((~a)&b&(~c)&(~d)&(~g))|((~a)&(~b)&d&(~f)&(~g))|((~a)&(~b)&(~c)&d&(~e))|(c&d&(~e)&(~f)&(~g))|((~a)&c&d&(~f)&(~g))|((~a)&c&d&(~e)&(~f))|((~a)&b&e&(~f)&(~g))|((~a)&d&e&(~f)&(~g))|((~a)&c&d&e&(~g))|((~a)&b&(~c)&(~d)&f)|((~a)&(~c)&d&(~e)&f)|((~a)&d&(~e)&(~f)&g)|((~a)&(~c)&d&(~e)&g)|((~a)&b&(~c)&f&g)|(b&c&(~d)&e&(~f))|(c&(~d)&(~e)&f&(~g))|((~b)&(~c)&d&(~e)&(~f)&g)|(a&b&(~d)&e&(~f)&g)|((~a)&(~b)&c&e&f&(~g))|(a&(~b)&c&(~d)&g)|(a&b&c&d&e&g)|((~a)&(~b)&(~e)&f&g)|((~b)&(~c)&(~d)&f&g)|((~a)&b&(~d)&(~e)&f)|(a&(~b)&d&e&f)|(a&(~b)&c&(~e)&(~g));
endmodule
