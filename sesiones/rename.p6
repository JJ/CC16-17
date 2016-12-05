#!/usr/bin/env perl6

use IO::Glob;

for glob( "?-*.md") -> $file {
  my $command = 'git mv '~$file~' 0'~$file;
  say $command;
  my $exit = shell $command;
  say "Exit $exit";
}
