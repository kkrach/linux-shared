# linux-shared
Shared configuration and scripts between different Linux installations


## Setup

echo "source ~/config/\_.bashrc\_includes" >> .bashrc
mv .config/terminator/config .config/terminator/config\_old
ln -s ../../config/\_.config\_terminator\_config .config/terminator/config
