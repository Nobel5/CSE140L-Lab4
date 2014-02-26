module Lab4Minimized(
input a,
input b,
input c,
input d,
input e,
input f,
output out
);
	assign out = (a&(~c)&d&e&f)|(a&(~b)&(~c)&(~d))|(b&(~c)&(~e)&f)|(a&b&d&(~f))|(a&(~b)&(~d)&e&(~f))|((~a)&(~c)&d&(~f))|((~a)&(~b)&(~d)&(~e)&f)|(a&(~b)&c&d&(~e)&f)|((~a)&c&d&e&f)|((~b)&(~c)&(~e)&(~f))|(a&(~c)&(~d)&e&(~f))|((~a)&b&(~d)&(~e)&(~f))|((~a)&b&c&e)|((~a)&b&e&f);
endmodule
