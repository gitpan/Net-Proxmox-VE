
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601",
    "Test::More" => 0,
    "Test::Trap" => 0
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Pure perl API for Proxmox virtualisation",
  "dist_author" => [
    "Brendan Beveridge <brendan\@nodeintegration.com.au>, Dean Hamstead <dean\@fragfest.com.au>"
  ],
  "dist_name" => "Net-Proxmox-VE",
  "dist_version" => "0.004",
  "license" => "perl",
  "module_name" => "Net::Proxmox::VE",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Carp" => 0,
    "HTTP::Headers" => 0,
    "HTTP::Request::Common" => 0,
    "JSON" => 0,
    "LWP::UserAgent" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
