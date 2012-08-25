package MyExport;

sub import {
    my $caller_pkg = caller;
    *{"${caller_pkg}::export_method"} = \&export_method;
}


sub export_method {
    my $self = caller;
    print "$self\n";

}


1;
