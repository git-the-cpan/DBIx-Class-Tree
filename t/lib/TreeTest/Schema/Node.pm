package TreeTest::Schema::Node;
use strict;
use warnings;

use Carp qw( croak );

use base qw( DBIx::Class );

__PACKAGE__->load_components(qw(
    PK::Auto
    Core
));

__PACKAGE__->table('nodes');

__PACKAGE__->add_columns(qw(
    node_id
    name
    parent_id
    position
    lft
    rgt
));

__PACKAGE__->set_primary_key( 'node_id' );

1;
