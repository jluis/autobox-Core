use Test::More qw(no_plan);
use strict;
use warnings;
use autobox::Core;

ok 'foo'->m(qr/o+/);
my $result =  'zero one'->m(qr/(\w+)\b\s*(\w+)\b\s*(\w+)\b\s*/);
is $result, '', 'scalar test';
my @result  = 'zero one two three'->m(qr/(\w+)\s*(\w+)\s*(\w+)\s*(\w+)\s*/);
ok $result;
is $result[3],'three'
