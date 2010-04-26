use inc::Module::Install;

BEGIN {
  if ($Module::Install::AUTHOR) {
    require Module::Install::ReadmeFromPod;
  }
}

name            'DBIx-Class-Tree';
perl_version    '5.008001';
all_from        'lib/DBIx/Class/Tree.pm';
readme_from     'lib/DBIx/Class/Tree.pm';

resources 'repository'  => 'http://dev.catalyst.perl.org/repos/bast/DBIx-Class-Tree/';

requires        'DBIx::Class' => '0.08100';
test_requires   'Test::Exception';

WriteAll;

