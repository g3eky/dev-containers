FROM alpine:3.21.2

ENV USERNAME=neo
ENV PASSWORD=nano

ENV USER_HOME=/home/$USERNAME
ENV CONFIG_FOLDER=$USER_HOME/.config

# Basic updates
RUN apk update
RUN apk upgrade

# Basic commands
RUN apk add sudo bash curl git

# Adding shell, tmux, starship
RUN apk add fish starship

# Neovim
RUN apk add neovim

# Create user
RUN adduser -D -s /usr/bin/fish $USERNAME
RUN echo "$USERNAME:$PASSWORD" | chpasswd
# RUN addgroup -S sudo
# RUN addgroup $USERNAME sudo
RUN echo "$USERNAME ALL=(ALL:ALL) ALL" >> /etc/sudoers


# Copying configs

## Copying fish configs
RUN rm -rf $CONFIG_FOLDER/fish/
COPY --chown=$USERNAME:$USERNAME dotfiles/fish $CONFIG_FOLDER/fish/

## Copying starship config
RUN rm -rf $CONFIG_FOLDER/starship/
COPY --chown=$USERNAME:$USERNAME dotfiles/starship $CONFIG_FOLDER/starship/


USER $USERNAME
WORKDIR /home/$USERNAME

# Unsetting ENV
ENV USERNAME=
ENV PASSWORD=
ENV USERHOME=

# Setting the entry point
ENTRYPOINT "/usr/bin/fish"
