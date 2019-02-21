This repo is for review of requests for signing shim.  To create a request for review:

- clone this repo
- edit the template below
- add the shim.efi to be signed
- add build logs
- commit all of that
- tag it with a tag of the form "myorg-shim-arch-YYYYMMDD"
- push that to github
- file an issue at https://github.com/rhboot/shim-review/issues with a link to your branch

Note that we really only have experience with using grub2 on Linux, so asking
us to endorse anything else for signing is going to require some convincing on
your part.

Here's the template:

-------------------------------------------------------------------------------
What organization or people are asking to have this signed:
-------------------------------------------------------------------------------
Magaeric Solutions LLC

-------------------------------------------------------------------------------
What product or service is this for:
-------------------------------------------------------------------------------
CloneDeploy - An OS cloning and deployment solution for various versions of Linux and Windows.
http://clonedeploy.org

-------------------------------------------------------------------------------
What's the justification that this really does need to be signed for the whole world to be able to boot it:
-------------------------------------------------------------------------------
Organizations may be deploying an image to 100's or 1000's of machines.  It is inefficient and insecure to be disabling Secure Boot in order to image those machines.

-------------------------------------------------------------------------------
Who is the primary contact for security updates, etc.
-------------------------------------------------------------------------------
- Name: Jon Dolny
- Position: Developer
- Email address: support@clonedeploy.org
- PGP key, signed by the other security contacts, and preferably also with signatures that are reasonably well known in the linux community:

-------------------------------------------------------------------------------
Who is the secondary contact for security updates, etc.
-------------------------------------------------------------------------------
- Name:
- Position:
- Email address:
- PGP key, signed by the other security contacts, and preferably also with signatures that are reasonably well known in the linux community:

-------------------------------------------------------------------------------
What upstream shim tag is this starting from:
-------------------------------------------------------------------------------
[https://github.com/rhboot/shim/tree/da6284569c4b5d60d14e6187f696f54cccb7b3d2]

-------------------------------------------------------------------------------
URL for a repo that contains the exact code which was built to get this binary:
-------------------------------------------------------------------------------
[https://github.com/cdadmin/shim-review/shim-da6284569c4b5d60d14e6187f696f54cccb7b3d2]

-------------------------------------------------------------------------------
What patches are being applied and why:
-------------------------------------------------------------------------------
[No patches, other than fixing a missing closing brace in mok.c as described in issue 168.  ]

-------------------------------------------------------------------------------
What OS and toolchain must we use to reproduce this build?  Include where to find it, etc.  We're going to try to reproduce your build as close as possible to verify that it's really a build of the source tree you tell us it is, so these need to be fairly thorough. At the very least include the specific versions of gcc, binutils, and gnu-efi which were used, and where to find those binaries.
-------------------------------------------------------------------------------
[Ubuntu 18.04.1 LTS binutils 2.30-20ubuntu2 gcc 4:7.3.0-3ubuntu2 gnu-efi 3.0.9-1]

gnu-efi 3.0.9-1 was used from https://packages.ubuntu.com/en/disco/amd64/gnu-efi/download


-------------------------------------------------------------------------------
Which files in this repo are the logs for your build?   This should include logs for creating the buildroots, applying patches, doing the build, creating the archives, etc.
-------------------------------------------------------------------------------
[shim_build.log]

-------------------------------------------------------------------------------
Add any additional information you think we may need to validate this shim
-------------------------------------------------------------------------------
[your text here]
