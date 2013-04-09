#!/usr/bin/perl

my %row;
while (my $line = <STDIN>) {
  chomp $line;
  my @line = split(/\t/, $line);
  my $index = 0;
  foreach my $cell (@line) {
    ++$index;
    push(@{$row{$index}}, $cell);
  }
}

foreach my $row (keys(%row)) {
  my $out = join(@{$row{$row}}, "\t");
  print $out . "\n";
}
