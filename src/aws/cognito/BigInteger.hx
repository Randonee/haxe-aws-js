package aws.cognito;

@:jsRequire("amazon-cognito-identity-js", "BigInteger")
@:native("AmazonCognitoIdentity.BigInteger")
extern class BigInteger{
	function new(?a:Dynamic, ?b:Dynamic);
	function am1(i,x,w,j,c,n);
	function am2(i,x,w,j,c,n);
	function am3(i,x,w,j,c,n);
	function int2char(n);
	function intAt(s, i);
	function copyTo(r);
	function fromInt(x);
	function nbv(i);
	function fromString(s, b);
	function toString(b);
	function negate();
	function abs();
	function compareTo(a);
	function nbits(x);
	function bitLength();
	function dlShiftTo(n, r);
	function drShiftTo(n, r);
	function lShiftTo(n, r);
	function rShiftTo(n, r);
	function subTo(a, r);
	function multiplyTo(a, r);
	function squareTo(r);
	function divRemTo(m, q, r);
	function nod(a);
	function invDigit();
	function equals(a);
	function addTo(a, r);
	function add(a);
	function subtract(a);
	function multiply(a);
	function divide(a);
	function montgomery(m);
	function montConvert(x);
	function montRevert(x);
	function montReduce(x);
	function montSqrTo(x, r);
	function montMulTo(x, y, r);
	function modPow(e, m, callback);

}