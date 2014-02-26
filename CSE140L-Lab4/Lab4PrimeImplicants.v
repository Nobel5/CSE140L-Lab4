module Lab4PrimeImplicants(
input a,
input b,
input c,
input d,
input e,
input f,
output out
);
	assign out = (a&(~b)&c&d&(~e)&f)|((~a)&b&(~d)&(~e)&(~f))|((~a)&b&c&(~d)&(~f))|(a&(~c)&(~d)&e&(~f))|(a&(~b)&(~d)&e&(~f))|(a&b&(~c)&e&(~f))|((~a)&(~b)&(~d)&(~e)&f)|(a&(~b)&(~c)&e&f)|(a&(~c)&d&e&f)|((~a)&c&d&e&f)|((~b)&(~c)&(~e)&(~f))|((~b)&(~c)&(~d)&(~e))|((~a)&(~c)&(~e)&(~f))|((~a)&(~c)&(~d)&(~e))|(a&(~b)&(~c)&(~d))|((~a)&b&(~c)&(~e))|((~c)&d&(~e)&(~f))|((~a)&(~c)&d&(~f))|(a&b&d&(~f))|((~a)&b&c&e)|(b&d&e&(~f))|((~a)&b&d&e)|((~c)&(~d)&(~e)&f)|(b&(~c)&(~e)&f)|((~a)&b&(~c)&f)|((~a)&b&e&f)|(b&(~c)&d);
endmodule
