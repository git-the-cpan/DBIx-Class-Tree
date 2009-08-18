use inc::Module::Install;

name            'DBIx-Class-Tree';
all_from        'lib/DBIx/Class/Tree.pm';
readme_from        'lib/DBIx/Class/Tree.pm';
githubmeta;

requires        'Carp'        => 0;
requires        'DBIx::Class' => '0.08100';
build_requires  'DBD::SQLite' => '0.42';

WriteAll;

