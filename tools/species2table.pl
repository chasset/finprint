use strict;
use warnings;

my $width = 300;
my $height = 200;
my $head_pattern = "| %s | %s | %s | %s | %s | %s | %s | %s |\n";
my $sep = "|---|---|---|---|---|---|---|---|\n";
my $value_pattern = "| %s | %s | %s | %s | %s | [www](%s) | <img src=\"%s\"> | <img src=\"%s\"> |\n";

while(<>) {
    chomp;
    my @fields = split ',';
    if ($. == 1) {
        printf $head_pattern, @fields;
        print $sep;
    } else {
        printf $value_pattern, @fields;
    }
}