# This -*-perl-*- program writes the Makefile for installing this distribution.
#
# See "perldoc perlmodinstall" or "perldoc ExtUtils::MakeMaker" for
# info on how to control how the installation goes.

require 5.004;
use strict;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME            => 'HTML::Tagset',
    AUTHOR          => 'Andy Lester <andy@petdance.com>',
    VERSION_FROM    => 'lib/HTML/Tagset.pm',
    ABSTRACT_FROM   => 'lib/HTML/Tagset.pm',
    PMLIBDIRS       => [qw(lib/)],
    dist            => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean           => { FILES => 'HTML-Tagset-*' },
);
