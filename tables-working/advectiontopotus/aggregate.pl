#!/usr/bin/perl

my %abundanceOf;
my %colLabel;
die unless open(IN, "<./all_OTU_assignments.txt");
while (my $line = <IN>) {
  chomp $line;
  my @line = split(/\t/, $line);
  my $index = -1;
  if ($. == 1) {
    shift @line;
    foreach my $col (@line) {
      ++$index;
      $colLabel{$index} = $col;
    }
    next;
  }
  my @sample = shift(@line);
  foreach my $col (@line) {
    $abundanceOf{$sample}{}

  }
}
close IN;
