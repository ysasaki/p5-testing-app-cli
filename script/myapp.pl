#!/usr/bin/env perl

use strict;
use warnings;
use FindBin qw($Bin);
use File::Spec::Functions qw/catfile/;
use lib catfile($Bin,'../lib');
use MyApp::Command;

MyApp::Command->dispatch;
