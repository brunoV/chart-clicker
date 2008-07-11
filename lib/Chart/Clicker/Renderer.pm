package Chart::Clicker::Renderer;
use Moose;

extends 'Chart::Clicker::Drawing::Component';

has '+border' => ( default => sub { Graphics::Primitive::Border->new( width => 0 )});
has 'context' => ( is => 'rw', isa => 'Str' );
has 'dataset_count' => ( is => 'rw', isa => 'Int' );
has 'additive' => ( is => 'ro', isa => 'Bool', default => 0 );

sub prepare {
    my $self = shift();

    return 1;
}

no Moose;

1;
__END__

=head1 NAME

Chart::Clicker::Renderer

=head1 DESCRIPTION

Chart::Clicker::Renderer represents the plot of the chart.

=head1 SYNOPSIS

  my $renderer = Chart::Clicker::Renderer::Foo->new();

=head1 METHODS

=head2 Constructor

=over 4

=item new

Creates a new Chart::Clicker::Renderer.

=back

=head2 Class Methods

=over 4

=item additive

Read-only value that informs Clicker that this renderer uses the combined ranges
of all the series it charts in total.  Used for 'stacked' renderers like
StackedBar.

=item get_option

Returns a value for the specified key (if it exists) from the options hashref.

=item prepare

Prepare the component.

=item render

Render the series.

=back

=head1 AUTHOR

Cory 'G' Watson <gphat@cpan.org>

=head1 SEE ALSO

perl(1)

=head1 LICENSE

You can redistribute and/or modify this code under the same terms as Perl
itself.
