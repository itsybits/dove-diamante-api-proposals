#!/usr/bin/perl

use warnings;

$^I = "";

while (<>) {
    s/<title>.*<\/title>/<title>Dove Diamante API<\/title>/;
    print;
}
