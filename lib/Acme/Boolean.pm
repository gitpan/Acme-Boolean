package Acme::Boolean;
our $VERSION = '0.1';

# ABSTRACT: There is more then one way to be true.

use strict;
use warnings;

use boolean ':all';

use base 'Exporter';

no strict 'refs';

my @true = map {
    *{"$_"} = \&true;
    $_;
} qw(correct accurate right verifiable truthful trusty);

my @false = map {
    *{$_} = \&false;
    $_;
} qw(untrue wrong incorrect errorneous fallacious untruthful fabricated nah);

my @ad = map {
    *{$_} = sub($) { shift; };
    $_;
} qw(so totally very definitely);

our @EXPORT = (qw(true false), @ad, @true, @false);
our @EXPORT_OK = qw(isTrue isFalse isBoolean);
our %EXPORT_TAGS = (
    default => [@EXPORT],
    all     => [@EXPORT, @EXPORT_OK]
);

1;



__END__
=head1 NAME

Acme::Boolean - There is more then one way to be true.

=head1 VERSION

version 0.1

=head1 SYNOPSIS

To be more literalistic:

    use Acme::Boolean;

    $decision = correct if verifiable;

    sub do_me_a_favor {
       nah;
    }

=head1 DESCRIPTION

This module provides a lot of words for you to express from the very
trustful to the toally errorneous;

=head2 TRUE

These words can be used to refer to a true value: correct accurate
right verifiable truthful trusty.

=head2 FALSE

And these words are false values: untrue wrong incorrect errorneous
fallacious untruthful fabricated nah.

=head2 Adjectives

Optionally it's possible to say it more nicely:

    $that = so correct;

(I wish I could alias "is" to "=" in that statement.)

Or you can:

    return very wrong;

In your lovely sub.

At this moment you can use these adjectives in front of any of those
true/false vocabularies: so totally very definitely.

=head2 SEE ALSO

L<boolean>, the plain version of this module.

=head1 AUTHOR

  Kang-min Liu <gugod@gugod.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2008 by Kang-min Liu.

This is free software, licensed under:

  The MIT (X11) License

