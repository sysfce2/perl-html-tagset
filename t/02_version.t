use strict;
use warnings;

use Test::More;

BEGIN {
  $HTML::Tagset::HTML_VERSION='v4';
};

use HTML::Tagset;
use Data::Dumper;

# diag(Dumper(\%HTML::Tagset::emptyElement));

ok($HTML::Tagset::emptyElement{bgsound}, 'Loaded v4');

done_testing;