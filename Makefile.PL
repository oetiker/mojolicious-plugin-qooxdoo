use strict;
use warnings;
use ExtUtils::MakeMaker 6.31;

my %WriteMakefileArgs = (
  'ABSTRACT' => 'Qooxdoo JSON-RPC support for the Mojolicious Perl framework',
  'AUTHOR' => 'Tobias Oetiker <tobi@oetiker.ch>',
  'BUILD_REQUIRES' => {
      'Test::More' => 0,
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'Mojolicious-Plugin-Qooxdoo',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'Mojolicious::Plugin::Qooxdoo',
  'PREREQ_PM' => {
    'Mojolicious' => '4.0'
  },
  'VERSION_FROM' => 'lib/Mojolicious/Plugin/Qooxdoo.pm',
  'test' => {
    'TESTS' => 't/*.t'
  }
);

unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);
