#!/usr/bin/perl

use warnings;

$^I = "";

while (<>) {
    s/<title>.*<\/title>/<title>DD API<\/title>/;
    print;
}
