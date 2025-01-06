#!/bin/bash

echo "Updating APT repositories..." && apt update -y -qq && {
    echo "APT repositories updated successfully!"
} || {
    echo "APT repositories update failed!"
    exit 1
}

echo "Upgrading installed packages..." && apt upgrade -y -qq && {
    echo "Packages upgraded successfully!"
} || {
    echo "Packages upgrade failed!"
    exit 1
}

echo "Installing common packages..." && apt install -y -qq \
    wget \
    autoconf \
    build-essential \
    pkg-config \
    automake \
    libboost-all-dev \
    libgmp3-dev \
    libxml2-dev \
    liblua5.1-0-dev \
    libmysqlclient-dev \
    libssl-dev \
    libsqlite3-dev && {
        echo "Common packages installed successfully!"
} || {
    echo "Common packages failed to install!"
    exit 1
}
