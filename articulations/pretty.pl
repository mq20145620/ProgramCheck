#!/usr/bin/perl

while(<>) {
    if (/^Answer:/) {
        $out = <>;
    }
}

@lines = split(' ' , $out);

sub bytime {
    ($a =~ /.*,(\d,\d),\S+\)$/)[0] cmp ($b =~ /.*,(\d,\d),.*\)$/)[0]
}

foreach (sort bytime @lines) {
    print "\t$_,\n";

}