use strict;
use warnings;

use Test::More;

BEGIN {
  $HTML::Tagset::HTML_VERSION='v5';
};

use HTML::Tagset;
use Data::Dumper;

# diag(Dumper(\%HTML::Tagset::emptyElement));

ok($HTML::Tagset::emptyElement{source}, 'Loaded v5');

done_testing;