use inc::Module::Install;

name            'DBIx-Class-Tree';
all_from        'lib/DBIx/Class/Tree.pm';

requires        'Carp'        => 0;
requires        'DBIx::Class' => '0.06';
build_requires  'DBD::SQLite' => '0.42';

auto_install;
WriteAll;

