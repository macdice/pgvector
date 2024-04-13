SELECT '[1,2,3]'::halfvec;
SELECT '[-1,-2,-3]'::halfvec;
SELECT '[1.,2.,3.]'::halfvec;
SELECT ' [ 1,  2 ,    3  ] '::halfvec;
SELECT '[1.23456]'::halfvec;
SELECT '[hello,1]'::halfvec;
SELECT '[NaN,1]'::halfvec;
SELECT '[Infinity,1]'::halfvec;
SELECT '[-Infinity,1]'::halfvec;
SELECT '[65519,-65519]'::halfvec;
SELECT '[65520,-65520]'::halfvec;
SELECT '[1e-8,-1e-8]'::halfvec;
SELECT '[4e38,1]'::halfvec;
SELECT '[1e-46,1]'::halfvec;
SELECT '[1,2,3'::halfvec;
SELECT '[1,2,3]9'::halfvec;
SELECT '1,2,3'::halfvec;
SELECT ''::halfvec;
SELECT '['::halfvec;
SELECT '[ '::halfvec;
SELECT '[,'::halfvec;
SELECT '[]'::halfvec;
-- TODO fix error message
SELECT '[ ]'::halfvec;
-- TODO fix error message
SELECT '[,]'::vector;
SELECT '[1,]'::halfvec;
SELECT '[1a]'::halfvec;
SELECT '[1,,3]'::halfvec;
SELECT '[1, ,3]'::halfvec;

SELECT '[1,2,3]'::halfvec(3);
SELECT '[1,2,3]'::halfvec(2);
SELECT '[1,2,3]'::halfvec(3, 2);
SELECT '[1,2,3]'::halfvec('a');
SELECT '[1,2,3]'::halfvec(0);
SELECT '[1,2,3]'::halfvec(16001);

SELECT unnest('{"[1,2,3]", "[4,5,6]"}'::halfvec[]);
SELECT '{"[1,2,3]"}'::halfvec(2)[];
