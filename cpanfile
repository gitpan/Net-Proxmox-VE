requires "Carp" => "0";
requires "HTTP::Headers" => "0";
requires "HTTP::Request::Common" => "0";
requires "JSON" => "0";
requires "LWP::UserAgent" => "0";
requires "strict" => "0";
requires "warnings" => "0";

on 'build' => sub {
  requires "Module::Build" => "0.3601";
};

on 'test' => sub {
  requires "Test::More" => "0";
  requires "Test::Trap" => "0";
};

on 'configure' => sub {
  requires "Module::Build" => "0.3601";
};
