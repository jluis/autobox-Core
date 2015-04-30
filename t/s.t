use Test::More qw(no_plan);
use strict;
use warnings;

use autobox::Core;

my $string = 'HELLO';

is $string->s('^HE', 'He'),1, "1 cambio";
is $string->s(qr/l/i,'l','g'),2, "2 Cambios";
is $string, 'HellO',"muesta";
is $string->s(qr/L/i,'L','gr'),'HeLLO',"cambio l a L $string" ;
is $string, "HellO","Confirma";
is $string->s(qr/(.)$/ , '&lc($1)','re'),'Hello',"Cambio ultimo caracter a minusculas $string";
is $string->s(qr/(.)/ , '&uc($1)','gre'),'HELLO',"Cambio todo a mayusculas $string";
is $string, "HellO","Unchanged";

