use strict;
use warnings;

my $width = 300;
my $height = 200;
my $head_pattern = "| %s | %s | %s | %s | %s | %s |\n";
my $sep = "|---|---|---|---|---|---|\n";
#my $value_pattern = "| %s | %s | %s | %s | %s | [www](%s) | <img src=\"%s\" height=\"$height\" width=\"$width\"> | <img src=\"%s\" height=\"$height\"> |\n";
my $value_pattern = "| %s | %s | %s | %s | %s | [www](%s) |\n\n";
my $header1 = "## %s (%s)\n\n";
my $img_pattern = "<img src=\"%s\">\n\n";

my (@fields, @values);
while(<>) {
    chomp;
    if ($. == 1) {
        @fields = split ',';
    } else {
        @values = split ',';
        printf $header1, $values[3], $values[4];
        printf $head_pattern, $fields[0], $fields[1], $fields[2], $fields[3], $fields[4], $fields[5];
        print $sep;
        printf $value_pattern, $values[0], $values[1], $values[2], $values[3], $values[4], $values[5];
        printf $img_pattern, $values[6];
        printf $img_pattern, $values[7];
    }
}