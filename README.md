# mwser-elasticsearch

mwser wrapper cookbook for elasticsearch. 

## Supported Platforms

CentOS 6.x

## Usage

### mwser-elasticsearch::default

Add `mwser-elasticsearch` to your node's run list. This will configure and start the cookbook's default version (`1.7.2`) elasticsearch service listening on `0.0.0.0:9200`. A few notes:

  * if `node['fqdn']` is `mwser1.oit.ucla.edu` (an internal es-only host), the cookbook will use ES version `1.5.0`.
  * make use of the `mwser-iptables` recipes to ensure ES is *not* world available (`mwser-iptables::elasticsearch` paired with `mwser-iptables::drop_input` should do the trick!)

## License and Authors

Author:: Steve Nolen (technolengy@gmail.com)
