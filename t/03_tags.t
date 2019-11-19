use strict;
use warnings;

use Test::More;

use HTML::Tagset::v4;
use HTML::Tagset::v5;

# From https://developer.mozilla.org/en-US/docs/Web/HTML/Element "Obsolete and deprecated" list
my @v4_only_tags = qw/acronym applet basefont bgsound big blink center dir font frame frameset isindex listing multicol nobr noembed noframes plaintext spacer strike tt xmp/;

my $found_all = 1;

foreach my $tag (@v4_only_tags) {
  if(!exists $HTML::Tagset::v4::isKnown{$tag}) {
    $found_all = 0;
    diag("Didn't find $tag in v4 list");
  }
}

ok($found_all, 'All HTML4-Only tags exist in the v4 tag list');

$found_all = 1;
foreach my $tag (@v4_only_tags) {
  if(exists $HTML::Tagset::v5::isKnown{$tag}) {
    $found_all = 0;
    diag("Found $tag in v5 list");
  }
}

ok($found_all, 'All HTLM4-only tags do not exist in v5 tag list');

my @v5_only_tags =  qw/article aside audio datalist details dialog figure figcaption header keygen main mark meter output picture rp rt ruby source summary template track video/;

$found_all = 1;
foreach my $tag (@v5_only_tags) {
  if(!exists $HTML::Tagset::v5::isKnown{$tag}) {
    $found_all = 0;
    diag("Didn't find $tag in v5 list");
  }
}

ok($found_all, 'All HTML5-only tags exist in v5 list');

$found_all = 1;
foreach my $tag (@v5_only_tags) {
  if(exists $HTML::Tagset::v4::isKnown{$tag}) {
    $found_all = 0;
    diag("Found $tag in v4 list");
  }
}

ok($found_all, 'All HTLM5-only tags do not exist in v4 tag list');

my @shared_tags = qw/span abbr q sub sup cite code em kbd samp strong var dfn b i u s small a img br wbr bdo embed title base link meta script style object tr td th thead tbody tfoot caption col colgroup input select option optgroup textarea button label h1 h2 h3 h4 h5 h6 p div pre address blockquote iframe hr ol ul menu li dl dt dd ins del fieldset legend map area object table  form/;

$found_all = 1;
foreach my $tag (@shared_tags) {
  if(!exists $HTML::Tagset::v5::isKnown{$tag}) {
    $found_all = 0;
    diag("Didn't find $tag in v5 list");
  }
}
ok($found_all, 'Shared tags exist in v5 list');

$found_all = 1;
foreach my $tag (@shared_tags) {
  if(!exists $HTML::Tagset::v4::isKnown{$tag}) {
    $found_all = 0;
    diag("Didn't find $tag in v4 list");
  }
}
ok($found_all, 'Shared tags exist in v4 list');

done_testing;
