# Validate with cpanfile-dump
# https://metacpan.org/release/Module-CPANfile

on 'build' => sub {
    requires 'ExtUtils::MakeMaker', '7.00';
};

on 'test' => sub {
    requires 'Test::More', '0.95';
};
