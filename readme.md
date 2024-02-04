# Remove all Snap support from Ubuntu
## Summary
The intention of this script is to completely remove all Snap support from Ubuntu.  You do not need to install this repo on your local machine; you can run it remotely with a simple shell command.

## Acknowlegments
I would like to thank the original author, Brian Dollery (https://github.com/BryanDollery) for the original code. The content for his, and this script came from an [Ask Ubuntu answer from Lorenz Keel](https://askubuntu.com/a/1285102/392607).

## Authors Rant
I don't like Snap, It is horrible. It adds a lot of junk to your server/workstation. It pollutes your configuration with services, mount points, and general BS. Additionally, Connocial should be ashamed of themselves the self-serving, sleazy decision to shove the "SNAP" concept down the throats (or up there butts,) of the Ubuntu community. I remind them that the Swahilli word "Ubuntu" means "I am because WE are". It does not mean "I am because Connocial decided it is so". Yes, I know that by definition, a Linux distibution is a collection of the core package, and the additional packages that the the distrabution maintainer has decided to include and support. However "SNAPS" are a concept that seems more worthy of Microsoft.

## General
If you are like me, you are an Linux geek. You have a number of scripts you run on a newly created Linux instance to install all of the usual packages, utilites, configurations, everythind that you ALWAYS do after a fresh install. Ununtu is a great distribution, except for SNAP. Unlike a package that you don't want, you can't just remove it. There are some open-source scripts, but I have found that generally the SNAP services remain as do the SNAP "mounts". Both of these are handled by systemd.

This script can be run directly from your local CLI with a single command. You do not to clone, build, nor dork-about with it. Just enter the below command line, and SNAP will be no more. You can even include this command in your post-install  scripts if you so desire. I have tested this script on Ubuntu Server 23.10, but I will test against other versions as I get a chance. I would welcome input and verification from other geeks. In particular, I would appreciate validation on other versions of Ubuntu.

**Usage**

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/DonBriggsWork/remove-snap/main/remove-snap.sh)"
```
