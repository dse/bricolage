#!/usr/bin/perl -w

use strict;
use File::Spec::Functions qw(catdir updir);
use FindBin;
use lib catdir $FindBin::Bin, updir, 'lib';
use bric_upgrade qw(:all);

do_sql q{UPDATE element_type SET description = replace(description, 'docuument', 'document') WHERE key_name = 'story'};
