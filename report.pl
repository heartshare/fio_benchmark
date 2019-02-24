#!/usr/bin/perl

use strict;
use warnings;

my @randomRead = ('/root/random_read/1k/randrd_1k_', '/root/random_read/10k/randrd_10k_', '/root/random_read/100k/randrd_100k_', '/root/random_read/1m/randrd_1m_', '/root/random_read/10m/randrd_10m_', '/root/random_read/100m/randrd_100m_', '/root/random_read/1g/randrd_1g_');
my @randomWrite = ('/root/random_write/1k/randwe_1k_', '/root/random_write/10k/randwe_10k_', '/root/random_write/100k/randwe_100k_', '/root/random_write/1m/randwe_1m_', '/root/random_write/10m/randwe_10m_', '/root/random_write/100m/randwe_100m_', '/root/random_write/1g/randwe_1g_');
my @sequentialRead = ('/root/sequential_read/1k/sequenrd_1k_', '/root/sequential_read/10k/sequenrd_10k_', '/root/sequential_read/100k/sequenrd_100k_', '/root/sequential_read/1m/sequenrd_1m_', '/root/sequential_read/10m/sequenrd_10m_', '/root/sequential_read/100m/sequenrd_100m_', '/root/sequential_read/1g/sequenrd_1g_');
my @sequentialWrite = ('/root/sequential_write/1k/sequenwe_1k_', '/root/sequential_write/10k/sequenwe_10k_', '/root/sequential_write/100k/sequenwe_100k_', '/root/sequential_write/1m/sequenwe_1m_', '/root/sequential_write/10m/sequenwe_10m_', '/root/sequential_write/100m/sequenwe_100m_', '/root/sequential_write/1g/sequenwe_1g_');

&fileRead (\@randomRead, "random_read");
&fileRead (\@randomWrite, "random_write");
&fileRead (\@sequentialRead, "sequential_read");
&fileRead (\@sequentialWrite, "sequential_write");

sub fileRead {
  my ($file_array, $name) = @_;

  foreach my $file (@$file_array) {
    my @array_IOPS = ();
    my @array_BW = ();

    foreach my $i (1..10) {
      my $file_name = $file;
      if ($i != 10) {
        $file = $file . "0". $i . ".txt";
      }
      else {
        $file = $file . $i . ".txt";
      }

      print "$file\n";

      open(FILE, $file) or die "$!";
      while (my $line = <FILE>) {
        chomp $line;
        if ($line =~ /IOPS=(\d+), BW=(\d+)/){
          push(@array_IOPS, $1);
          push(@array_BW, $2);
        }
      }
      close(FILE);
      $file = $file_name;
    }

    if (&report (\@array_IOPS, \@array_BW, $name)){
      print "OK\n";
    }
  }
}

sub report {
  my ($iops_array, $bw_array, $name) = @_;
  our $sum1 = 0;
  our $sum2 = 0;

  my @array_iops = sort{$a <=> $b} @$iops_array;
  my @array_bw = sort{$a <=> $b} @$bw_array;

  shift(@array_iops);
  pop(@array_iops);

  shift(@array_bw);
  pop(@array_bw);

  foreach my $num (@array_iops) {
    $sum1 += $num;
  }

  foreach my $num (@array_bw){
    $sum2 += $num;
  }

  open(FILE, ">> result.txt") or die "$!";
  my $avg1 = $sum1 / 8;
  my $avg2 = $sum2 / 8;

  print FILE "-------------------\n";
  print FILE "$name\n";
  print FILE "$avg1\n";
  print FILE "$avg2\n";

  return 1;
}
