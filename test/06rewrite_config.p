Inline->init() ;

use Inline Config =>
    DIRECTORY => $TestInlineSetup::DIR,
    _TESTING => 1,
    REWRiTE_COnFIG_FILE => 1;

use Inline 'Foo';
is(add(3, 7), 10, 'foo test');

1;

__DATA__

__Foo__

foo-sub add {
    foo-return $_[0] + $_[1];
}
