#!/usr/bin/perl
use strict;
use warnings;
#ask filename
print "Enter romfile name: ";
my $filename = <>;
chomp $filename; 

#read file
open my $fh, '<', $filename or die "Can't open file $!";
my $file_content = do { local $/; <$fh> };
close $fh;

#find last carac U before carac chain VIDEO
my $index = rindex($file_content, 'U', index($file_content, 'VIDEO'));

#if u found before video
if($index != -1) {
    #delete all before u
    substr($file_content, 0, $index) = "";

    #write new file
    open my $fh, '>', $filename or die "Can't open file $!";
    print $fh $file_content;
    close $fh;
    print "The file has been successfully modified.\n";
} else {
    print "Please use this script only to rewrite an Nvidia bios.\n";
}