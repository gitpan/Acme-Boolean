
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Acme-Boolean',
  NAME      => 'Acme::Boolean',
  AUTHOR    => 'Kang\-min\ Liu\ \<gugod\@gugod\.org\>',
  ABSTRACT  => 'There is more then one way to be true.',
  VERSION   => '0.3',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.21) } ? (LICENSE => 'mit') : ()),
  PREREQ_PM    => {
    "boolean" => '0.20',
  },
);
