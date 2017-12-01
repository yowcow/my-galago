http_request "/usr/local/share/fonts/source-code-pro.tar.gz" do
  url "https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.tar.gz"
  not_if "/usr/local/share/fonts/source-code-pro.tar.gz"
end

execute "Unarchive and refresh font-config" do
  command <<-CMD
    tar xzf /usr/local/share/fonts/source-code-pro.tar.gz -C /usr/local/share/fonts && fc-cache -f -v
  CMD
  not_if "test -e /usr/local/share/fonts/source-code-pro-2.030R-ro-1.050R-it"
end
