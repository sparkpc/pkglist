begin_pacman="pacman ++"
end_pacman="pacman --"
begin_aur="aur ++"
end_aur="aur --"
[ -f /usr/bin/paru ] || pacman -S paru
sed -n "/^$begin_pacman/,/^$end_pacman/p" ./pkglist | sed "s/$begin_pacman//"  | sed "s/$end_pacman//" |sudo  pacman -S -
sed -n "/^$begin_aur/,/^$end_aur/p" ./pkglist | sed "s/$begin_aur//"  | sed "s/$end_aur//" | paru -S -


