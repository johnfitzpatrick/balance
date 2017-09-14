pkg_name=webapp
pkg_origin=franklinwebber
pkg_version="0.2.0"
pkg_maintainer="Franklin Webber <franklin.webber@gmail.com>"
pkg_license=('Apache-2.0')
pkg_deps=(core/httpd)
pkg_svc_user="root"
pkg_svc_group="root"
pkg_exports=(
  [port]=serverport
)

do_download() {
  return 0
}

do_build() {
  return 0
}

do_install() {
  cp hostname ${pkg_prefix}/
}
