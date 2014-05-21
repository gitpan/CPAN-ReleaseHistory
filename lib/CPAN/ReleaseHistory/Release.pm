package CPAN::ReleaseHistory::Release;
$CPAN::ReleaseHistory::Release::VERSION = '0.10';
use Moo;
use CPAN::DistnameInfo;

has 'path'      => (is => 'ro');
has 'timestamp' => (is => 'ro');
has 'size'      => (is => 'ro');
has 'distinfo'  => (is => 'lazy');

sub _build_distinfo
{
    my $self = shift;

    return CPAN::DistnameInfo->new($self->path);
}

1;
