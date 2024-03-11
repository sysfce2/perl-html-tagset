# Validate with cpanfile-dump
# https://metacpan.org/release/Module-CPANfile

on 'build' => sub {
    requires 'ExtUtils::MakeMaker', '6.46';
};

on 'test' => sub {
    requires 'Test::More', '0.95';
    recommends 'Test::Pod', '1.14';
};
