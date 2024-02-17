SELECT 'aBc', UPPER('aBc'), LOWER('aBc');
-- UPPER() makes it entirely uppercase
-- LOWER() makes it entirely lowercase
SELECT 5/2, 5 DIV 2, 5%2, 5 MOD 2;
-- DIV is same as '/' (divide)
-- MOD is same as '%' (remainder)
SELECT POW(9, 1/2), SQRT(9);
-- POW(x, y) means "x to the power y"
-- SQRT(x) gives the square root of x [x^(1/2)]
SELECT RADIANS(180), DEGREES(PI());
-- RADIANS() takes degree and converts it to radian
-- DEGREES() takes radian and converts it to degree
-- PI() gives the full value of PI
SELECT SIN(180), ASIN(RADIANS(0));
-- SIN() takes radian & gives its sine value
-- ASIN() takes radian & gices its sine inversed VALUES
-- Similar Functions: COS, ACOS, TAN,  ATAN
SELECT  COS(180), ABS(COS(180)),
        CEIL(COS(180)), FLOOR(COS(180)),
        ATAN(PI()), ROUND(ATAN(PI())), ROUND(COS(180)),
        ROUND(COS(180), 1), TRUNCATE(COS(180), 1);
-- ABS() negates -ve
-- CEIL() converts float to nearest highest integer
-- FLOOR() converts float to nearest lowest integer
-- ROUND(x.y) does ceil if y >= .5 and floor if y < .5
-- ROUND(x.y, z) does the rounding for z floating digits
-- TRUNCATE(x.y, z) cuts the part after z digits of y without round
SELECT LN(10), LOG(10), LOG2(2), LOG10(10), EXP(-100);
-- LN(x) & LOG(x) are same, returns e based log of x
-- LOG2(x) returns 2 based log & LOG10(x) returns 10 based log
-- EXP(x) returns exponential of x [e to the power x]
SELECT RAND(); -- RAND() returns a random value between 0 to 1