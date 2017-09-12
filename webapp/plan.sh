pkg_name=webapp
pkg_origin=franklinwebber
pkg_version="0.1.0"
pkg_maintainer="Franklin Webber <franklin.webber@gmail.com>"
pkg_license=('Apache-2.0')
pkg_deps=(core/httpd)
pkg_build_deps=(core/httpd)
pkg_svc_user="root"
pkg_svc_group="root"
pkg_exports=(
  [port]=port
)

pkg_svc_run="httpd -DFOREGROUND -f /hab/pkgs/core/httpd/2.4.27/20170828234114/conf/httpd.conf"

do_build() {
  return 0
}

do_install() {
  cp /src/hostname  $(hab pkg path core/httpd)/cgi-bin/

  chmod 755 $(hab pkg path core/httpd)/cgi-bin/hostname

  sed -i '/LoadModule cgid_module/s/#//g' $(hab pkg path core/httpd)/conf/httpd.conf

  mkdir -p $pkg_svc_config_path/
}
