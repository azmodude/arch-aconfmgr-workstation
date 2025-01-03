# shellcheck shell=bash
AddPackage crun           # A fast and lightweight fully featured OCI runtime and C library for running containers
AddPackage incus          # Powerful system container and virtual machine manager
AddPackage libvirt        # API for controlling virtualization engines (openvz,kvm,qemu,virtualbox,xen,etc)
AddPackage podman         # Tool and library for running OCI-based containers in pods
AddPackage podman-compose # A script to run docker-compose.yml using podman
AddPackage qemu-full      # A full QEMU setup
AddPackage skopeo         # A command line utility for various operations on container images and image repositories.
AddPackage swtpm          # Libtpms-based TPM emulator with socket, character device, and Linux CUSE interface
AddPackage umoci          # Umoci Modifies Open Container Images
AddPackage virt-what      # A small program that prints out a list of facts about a virtual machine

CreateLink /etc/systemd/system/sockets.target.wants/incus-user.socket /usr/lib/systemd/system/incus-user.socket
CreateLink /etc/systemd/system/sockets.target.wants/incus.socket /usr/lib/systemd/system/incus.socket
CreateLink /etc/systemd/system/sockets.target.wants/libvirtd-admin.socket /usr/lib/systemd/system/libvirtd-admin.socket
CreateLink /etc/systemd/system/sockets.target.wants/libvirtd-ro.socket /usr/lib/systemd/system/libvirtd-ro.socket
CreateLink /etc/systemd/system/sockets.target.wants/libvirtd.socket /usr/lib/systemd/system/libvirtd.socket

SetFileProperty /var/lib/swtpm-localca owner tss
