name             'datadog'
maintainer       'Datadog'
maintainer_email 'package@datadoghq.com'
license          'Apache-2.0'
description      'Installs/Configures datadog components'
version          '4.11.1'
chef_version     '>= 12.7'
source_url       'https://github.com/DataDog/chef-datadog'
issues_url       'https://github.com/DataDog/chef-datadog/issues'

%w(
  amazon
  centos
  debian
  fedora
  redhat
  scientific
  ubuntu
  windows
  suse
).each do |os|
  supports os
end

depends    'apt'
depends    'yum', '< 7.0.0' # yum v7.0.0 drops Chef 14 support
