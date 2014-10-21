#!/bin/false

package Net::Proxmox::VE::Storage;

use strict;
use warnings;
use base 'Exporter';

our $VERSION = 0.1;
our @EXPORT = qw( storage );

my $base = '/storage';

sub storage {

    my $self = shift or return;
    my @a = @_;

    # if no arguments, return a list
    unless (@a) {

        my $storage = $self->get($base);
        return $storage;

    # if there is a single argument, return a single storage instance as an object
    } elsif (@a == 1) {

        my $storage = $self->get($base,$a[0]);
        return $storage;

    # if there are multiple, then create new storage
    } else {

    }

    return 1

}

sub new {

}

1;
