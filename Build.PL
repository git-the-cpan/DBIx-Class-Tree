use strict;
use Module::Build;
use Module::Build::Compat;

my %arguments = (
    create_makefile_pl => 'passthrough',
    license            => 'perl',
    module_name        => 'DBIx::Class::Tree',
    requires           => {
        'DBIx::Class'               => 0.06,
    },
    build_requires      => {
        'DBD::SQLite'               => 1.11,
    },
    create_readme      => 1,
    test_files         => [ glob('t/*.t'), glob('t/*/*.t') ]
);

Module::Build->new(%arguments)->create_build_script();

