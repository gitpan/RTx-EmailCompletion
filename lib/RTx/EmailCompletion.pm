package RTx::EmailCompletion;

use strict;

our $VERSION = "0.01";

1;

__END__

=head1 NAME

RTx::EmailCompletion - Add auto completion on RT email fields

=head1 VERSION

This document describes version 0.01 of RTx::EmailCompletion.

=head1 DESCRIPTION

I'm so tired to type email address by hand that I've done this module
to add AJAX autocompletion on all email field of RT. As adding
completion is dynamic, it should work on most RT releases (see later
if it's not the case).

There's 3 S<things :>

=over

=item *

a small web service C<html/Ajax/EmailCompletion> which search in all
known users in the S<database ;>

=item *

prototype library to manipulate DOM and scriptaculous library to
S<autocomplete ;>

=item *

a small javascript which parse html pages and add autocomplete on
known input tags.

=back

=head1 INSTALLATION

Install it like a standard perl module :

 RTHOME=/opt/rt3 perl Makefile.PL
 make
 make install

=head1 HOW TO ADD FIELD TO AUTOCOMPLETION

If you find email field without autocomplete, you can modify
C<html/NoAuth/js/emailcompletion.js> to handle this field (and email
me to patch this module).

At the beginning of this file you will find two global vars
C<multipleCompletion> and C<singleCompletion>. They are array of
regexp.

Regexp must match all the word because C<^> and C<$> are added for
matching. So if you want to match C<Field1> and C<Field2> you must add
something like C<Field.> or better C<Field[12]>.

=head1 HISTORY

The first version (unreleased) modify html pages. The better method
actually used allow this module to be compatible with, virtually, all
RT release.

=head1 AUTHORS

Nicolas Chuche E<lt>nchuche@barna.beE<gt>

=head1 COPYRIGHT

Copyright 2007 by Nicolas Chuche E<lt>nchuche@barna.beE<gt>

This program is free software; you can redistribute it and/or 
modify it under the same terms as Perl itself.

See L<http://www.perl.com/perl/misc/Artistic.html>

All Scriptaculous and Prototype program are placed under MIT licence
and are copyrighted by their owners (see top of files).

=cut