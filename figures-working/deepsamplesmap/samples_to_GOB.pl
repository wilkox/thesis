#!/usr/bin/perl

die unless open(IN, "samples.csv");
my %lat;
my %long;
my %symbol;
my %color;
while (my @line = split(/,/, <IN>)) {
  next if $. == 1;
  $lat{@line[0]} = @line[1];
  $long{@line[0]} = @line[2];
  my $zone = @line[3];
  chomp $zone;
  if ($zone eq "north") {
    $symbol{@line[0]} = 2;
    $color{@line[0]} = 12;
  } elsif ($zone eq "south") {
    $symbol{@line[0]} = 3;
    $color{@line[0]} = 2;
  } elsif ($zone eq "deep") {
    $symbol{@line[0]} = 4;
    $color{@line[0]} = 1;
  } else {
    die "|$zone|";
  }
}
close IN;

die unless open(OUT, ">samples.gob");
print OUT "%GOB1.03 graphics objects";

foreach my $sample (keys(%lat)) {
  print OUT <<EOF

:SINGLESYMBOL
coordinates=1
clip=1
iOrder=1
isFixed=1
x=$long{$sample}
y=$lat{$sample}
symbolNo=$symbol{$sample}
symbolSize=3
FillColor=$color{$sample}
BorderColor=0
BorderWidth=1
EOF
}

close OUT;
