use v6.c;

use Test;
use XML::XPath;

plan 2;

my $x = XML::XPath.new(xml => q:to/ENDXML/);
<foo/>
ENDXML

is $x.find('starts-with("123","1")'),  True,  "123 starts with 1";
is $x.find('starts-with("123","23")'), False, "123 starts not with 23";

done-testing;
