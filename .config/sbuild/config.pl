# Set the chroot mode to be unshare.
$chroot_mode = 'unshare';
$external_commands = { "build-failed-commands" => [ [ '%SBUILD_SHELL' ] ] };

##############################################################################
# PACKAGE BUILD RELATED (source-only-upload as default)
##############################################################################
# -d
$distribution = 'unstable';

# -A
$build_arch_all = 1;

# -s
$build_source = 1;

# --source-only-changes
$source_only_changes = 1;

# --no-clean-source
$clean_source = 0;

# -v
$verbose = 1;

##############################################################################
# POST-BUILD RELATED (turn off functionality by setting variables to 0)
##############################################################################
$run_lintian = 1;
$lintian_opts = ['-i', '-I'];
$run_piuparts = 1;
$piuparts_opts = ['--no-eatmydata', '--schroot', 'unstable-amd64-sbuild'];
$run_autopkgtest = 1;
$autopkgtest_root_args = '';
$autopkgtest_opts = [ '--', 'schroot', '%r-%a-sbuild' ];
