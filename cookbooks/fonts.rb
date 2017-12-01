execute "Download tarball" do
  command <<-CMD
    curl -L https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.tar.gz -o /usr/local/share/fonts/source-code-pro.tar.gz
  CMD
  not_if "test -e /usr/local/share/fonts/source-code-pro.tar.gz"
end

execute "Unarchive tarball" do
  command <<-CMD
    tar xzf /usr/local/share/fonts/source-code-pro.tar.gz -C /usr/local/share/fonts
  CMD
  not_if "test -e /usr/local/share/fonts/source-code-pro-2.030R-ro-1.050R-it"
end

execute "fc-cache" do
  command <<-CMD
    fc-cache -f -v
  CMD
end
