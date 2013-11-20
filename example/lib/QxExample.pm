package QxExample;
use strict;
use warnings;

use Mojo::Base 'Mojolicious';

sub startup {
    my $self = shift;
    $self->routes->route('/jsonrpc')->to('JsonRpcService#dispatch');
}

1;
