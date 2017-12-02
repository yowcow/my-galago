template "/usr/bin/i3-gnome" do
  source "i3-gnome/templates/bin/i3-gnome"
  mode   "0755"
end

template "/usr/share/xsessions/i3-gnome.desktop" do
  source "i3-gnome/templates/xsessions/i3-gnome.desktop"
  mode   "0644"
end

template "/usr/share/gnome-session/sessions/i3-gnome.session" do
  source "i3-gnome/templates/gnome-session/sessions/i3-gnome.session"
  mode   "0644"
end

template "/usr/share/applications/i3-gnome.desktop" do
  source "i3-gnome/templates/applications/i3-gnome.desktop"
  mode   "0644"
end
