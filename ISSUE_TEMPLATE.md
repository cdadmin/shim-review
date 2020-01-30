Make sure you have provided the following information:

 - [x] link to your code branch cloned from rhboot/shim-review in the form user/repo@tag
 - [x] completed README.md file with the necessary information
      https://github.com/cdadmin/shim-review/tree/magaericsolutions-shim-x64-20200130/README.md
 - [x] shim.efi to be signed
https://github.com/cdadmin/shim-review/tree/magaericsolutions-shim-x64-20200130/shimx64.efi
 - [x] public portion of your certificate embedded in shim (the file passed to VENDOR_CERT_FILE)
       https://github.com/cdadmin/shim-review/tree/magaericsolutions-shim-x64-20200130/magaericsolutions-ca.cer
 - [x] any extra patches to shim via your own git tree or as files
       No additional patches
 - [x] any extra patches to grub via your own git tree or as files
       Add proxy pxe support to grub2
       https://github.com/cdadmin/shim-review/tree/magaericsolutions-shim-x64-20200130/grub-2.02/patches/add_pxe_efi_proxy.patch
 - [x] build logs
       https://github.com/cdadmin/shim-review/tree/magaericsolutions-shim-x64-20200130/shim_build.log


###### What organization or people are asking to have this signed:
Magaeric Solutions LLC - The developer of CloneDeploy

###### What product or service is this for:
CloneDeploy - An OS cloning and deployment solution for various versions of Linux and Windows. http://clonedeploy.org

###### What is the origin and full version number of your shim?
Shim-15 up to and including a4a1fbe

###### What's the justification that this really does need to be signed for the whole world to be able to boot it:
Organizations may be deploying an image to 100's or 1000's of machines. It is inefficient and insecure to be disabling Secure Boot in order to image those machines.

###### How do you manage and protect the keys used in your SHIM?
NSS Database stored on offline device

###### Do you use EV certificates as embedded certificates in the SHIM?
No

###### What is the origin and full version number of your bootloader (GRUB or other)?
grub2 2.02-2ubuntu8.12
https://launchpad.net/ubuntu/+archive/primary/+sourcefiles/grub2/2.02-2ubuntu8.12/grub2_2.02.orig.tar.xz

patched with all patches including all linuxefi patches from
https://launchpad.net/ubuntu/+archive/primary/+sourcefiles/grub2/2.02-2ubuntu8.12/grub2_2.02-2ubuntu8.12.debian.tar.xz

###### If your SHIM launches any other components, please provide further details on what is launched
Shim launches Grub2 which launches an embedded Linux OS based on buildroot 2018.11.2

###### How do the launched components prevent execution of unauthenticated code?
Shim only directly launches Grub2 which is patched to enforce only signed kernels and chains

###### Does your SHIM load any loaders that support loading unsigned kernels (e.g. GRUB)?
No

###### What kernel are you using? Which patches does it includes to enforce Secure Boot?
Vanilla Linux 4.20.10 with lockdown patch

###### What changes were made since your SHIM was last signed?
This is the first submission

###### What is the hash of your final SHIM binary?
76144f058c2a7586eaabb74125dab2360a3c2171afb0a27390d76e5476517763  shimx64.efi
