package DBIx::Class::Tree;
# vim: ts=8:sw=4:sts=4:et

use strict;
use warnings;

use base qw( DBIx::Class );

our $VERSION = '0.03001';

1;
__END__

=head1 NAME

DBIx::Class::Tree - Manipulate and anaylze tree structured data.

=head1 DESCRIPTION

The tree modules provide the tools to represent, modify, and analyze
trees of data with DBIx::Class.

=head1 COMPONENTS

L<DBIx::Class::Tree::AdjacencyList> - Manage a tree of data using the
common adjacency list model.

L<DBIx::Class::Tree::AdjacencyList::Ordered> - Glue DBIx::Class::Ordered
and DBIx::Class::Tree::AdjacencyList together.

=head1 DAG

All tree related modules must conform to have and use the basic traversal
methods of a DAG.  For the most part this just means that Tree modules
must provide the appearance of having multiple parents per node (via a
parents() method) but may very well never return more than one parent.
All utility modules, such as a Visitor module, should do its best to
never assume that a node only has one parent.  There are situations
where this is not possible - in those cases the module's documentation
should clearly state that it is not compatible with DAGs.

So far there is no Tree::DAG module, but there will be.  These requirements
are vague, and the requirements of Tree modules to be DAG compatible will
become more defined in due course.

=head1 AUTHOR

Aran Clary Deltac <bluefeet@cpan.org>

=head1 LICENSE

You may distribute this code under the same terms as Perl itself.

