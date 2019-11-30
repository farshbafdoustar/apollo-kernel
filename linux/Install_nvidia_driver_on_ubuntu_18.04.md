# Install NVIDIA driver on Ubuntu 18.04
If you want to install Apollo-Kernel on Ubuntu 18.04, please follow the steps below to install Apollo-Kernel and NVIDIA driver.

## Install Kernel
Follow the steps in [Apollo Software Installation Guide](https://github.com/ApolloAuto/apollo/tree/master/docs/quickstart/apollo_software_installation_guide.md#Install-apollo-kernel) to install Apollo Kernel.


## Disable nouveau in Kernel
According to the NVIDIA developer zone: Create a file

```
nano /etc/modprobe.d/blacklist-nouveau.conf
```

with the following contents:

```
blacklist nouveau
options nouveau modeset=0
```

Regenerate the kernel initramfs:

```
sudo update-initramfs -u -k 4.9.178-vetron-1-RT
```

and finally: reboot
```
sudo reboot
```

## Installing the driver
just run the follwing script to download and install the driver
```
install-nvidia_ubuntu18.sh
```

## Testing the driver

```
nvidia-smi -a
```



