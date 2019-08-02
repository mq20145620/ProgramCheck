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

$i=0;
foreach (sort bytime @lines) {
    print "\t$_,\n";
    if ($i % 4 == 3) {
        print "\n";
    }
    $i++;

}
