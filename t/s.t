use Test::More qw(no_plan);
use strict;
use warnings;

use autobox::Core;

my $string = 'HELLO';

is $string->s('^HE', 'He'),1, 'From "HE..." to "He..."';
is $string->s(qr/l/i,'l','g'),2, 's/l/l/ig on "HeLLO"';
is $string, 'HellO','All ok so far $string is "HellO"';
is $string->s(qr/L/i,'L','gr'),'HeLLO','s/L/L/igr on "HeLLO"' ;
is $string, "HellO",'$string is unchanged';
is $string->s(qr/(.)$/ , '&lc($1)','re'),'Hello';
is $string->s(qr/(.)/ , '&uc($1)','gre'),'HELLO';
is $string, "HellO","Unchanged $string";
is $string->s(qr/([aeiou])/i,'&uc($1)','ge'),2,"2 Changes";
is $string,"HEllO";
is "READ only",""->s(qr/.*/,'READ only','r');

