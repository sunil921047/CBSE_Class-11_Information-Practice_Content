

-- DATA TYPE IN SQL



--		tinyint	Stores only whole numbers.	0	255	1 byte
--		smallint	Stores only whole numbers.	-32768	32,767	2 bytes
--		int	Stores only whole numbers.	-2,147,483,648	2,147,483,647	4 bytes
--		bigint	Stores only whole numbers.	-9,223,372,036,854,770,000	9,223,372,036,854,770,000	8 bytes
--		decimal(p,s)	Stores whole (integer) as well as real numbers. The p parameter indicates the maximum total number of digits that can be stored (both to the left and to the right of the decimal point). p must be a value from 1 to 38. Default is 18. The s parameter indicates the maximum number of digits stored to the right of the decimal point. s must be a value from 0 to p. Default value is 0. Storage sizes vary, based on the precision.	-10^38 +1	10^38 -1	5-17 bytes
--		numeric(p, s)	Stores whole (integer) as well as real numbers. The p parameter indicates the maximum total number of digits that can be stored (both to the left and to the right of the decimal point). p must be a value from 1 to 38. Default is 18. The s parameter indicates the maximum number of digits stored to the right of the decimal point. s must be a value from 0 to p. Default value is 0. Storage sizes vary, based on the precision.	-10^38 +1	10^38 -1	5-17 bytes
--		float	Stores Floating precision number data. The n parameter indicates whether the field should hold 4 or 8 bytes. float(24) holds a 4-byte field and float(53) holds an 8-byte field. Default value of n is 53.	-1.79E + 308	1.79E + 308	4 or 8 bytes
--		real	Stores Floating precision number data.	-3.40E + 38	3.40E + 38	4 bytes
--		bit	Stores integer data that can be 0, 1, or NULL.	0	1	-
--		smallmoney	Stores monetary or currency value.	-214,748.3648	+214,748.3647	4 bytes
--		money	Stores monetary or currency value.	-922,337,203,685,477.5808	+922,337,203,685,477.5807	8 bytes

--				Text (Character/String) data type

--		char(n)	Stores fixed-length, non-Unicode character data with a length of n bytes.	8,000 characters	Defined width
--		varchar(n)	Stores variable-length, non-Unicode character data with a length of n bytes.	8,000 characters	2 bytes + number of chars
--		varchar(MAX)	Stores variable-length, non-Unicode character data.	1,073,741,824 characters	2 bytes + number of chars
--		text	Stores variable-length, non-Unicode character data.	2GB of text data	4 bytes + number of chars
--		nchar(n)	Stores fixed-length, Unicode character data with a length of n bytes.	4,000 characters	
--		nvarchar(n)	Stores variable-length, Unicode character data with a length of n bytes.	4,000 characters	
--		nvarchar(MAX)	Stores variable-length, Unicode character data.	536,870,912 characters	
--		ntext	Stores variable-length, Unicode character data.	2GB of text data	
--		binary()	Stores fixed-length binary data.	8,000 bytes	
--		varbinary(n)	Stores variable-length binary data.	8,000 bytes	
--		varbinary(MAX)	Stores variable-length binary data.	2GB	

--				image	Stores variable-length binary data.	2GB	

--				Date and Time data type

--		date	Stores a date like June 30, 1991.	Jan 1, 0001	Dec 31, 9999	3 bytes
--		datetime	Defines a date that is combined with a time of day with fractional seconds that is based on a 24-hour clock.	Jan 1, 1753	Dec 31, 9999	8 bytes
--		smalldatetime	Defines a date that is combined with a time of day. The time is based on a 24-hour day, with seconds always zero (:00) and without fractional seconds.	Jan 1, 1900	Jun 6, 2079	4 bytes
--		datetime2	Defines a date that is combined with a time of day that is based on 24-hour clock. datetime2 can be considered as an extension of the existing datetime type that has a larger date range, a larger default fractional precision, and optional user-specified precision.	Jan 1, 0001	Dec 31, 9999	6-8 bytes
--		datetimeoffset	Defines a date that is combined with a time of a day that has time zone awareness and is based on a 24-hour clock.	Jan 1, 0001	Dec 31, 9999	8-10 bytes
--		time	Stores a time of day like 12:30 P.M. Store a time only to an accuracy of 100 nanoseconds	-	-	3-5 bytes
--		timestamp	Stores a unique number that gets updated every time a row gets created or modified. The timestamp value is based upon an internal clock and does not correspond to real time. Each table may have only one timestamp variable


