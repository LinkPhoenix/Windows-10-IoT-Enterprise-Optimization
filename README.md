# INFORMATION

I rewrote the script in POWERSHELL because BATCH could not answer all my needs, I do not know if it would put it here or on another deposit


# Description
Windows 10 IoT Enterprise optimization is a repository that references documentation on this version of Windows as well as Scripts to be able to customize your master image for industrial use

# Your attention
<span style="color:red">
Some script are edited negotiate your need, you need to edit them and find the right settings.
</span>

# Why I created this repositori?
In my work I had to make a master image of "Windows 10 IoT Enterprise LTSB 2016", but we do not have any tools for creating and deploying Microsoft. But we didn't have provisions for Microsoft's deployment tools and no documentation on this new version of Windows, I'm talking about the IoT Enterprise version, for optimum production optimization.

Often I had to redo all the optimizations for our partners via a remote grip. After several times I decided to gather all my script in a single bass and shared. This is a lot of time and research.

I hope this will help companies to create a version of Windows 10 IoT Enterprise negotiate your needs and no longer see BlueScreen and where a user is tampering with the system.

# What is Windows 10 IoT Enterprise?
Windows 10 IoT Enterprise is a full version of Windows 10 that delivers enterprise manageability and security to IoT solutions. Windows 10 IoT Enterprise shares all the benefits of the worldwide Windows ecosystem. It is a binary equivalent to Windows 10 Enterprise, so you can use the same familiar development and management tools as client PCs and laptops. However, when it comes to licensing and distribution, the desktop version and IoT versions differ. 

More information [here](https://docs.microsoft.com/en-us/windows/iot-core/windows-iot-enterprise)

# Contribute

You can submit your scripts in Batch only and according to this syntax

    :: Name : Name of the script
    :: Description : Description of the script
    :: URL Source : Information source Links If you have one
    :: Comment : Make a comment on the script if needed
    ::
    REG ADD "PATH_KEY" /v "VALUE" /t "TYPE" /d "VALUE" /f
# Tools used

* [Dism++](https://www.chuyu.me/en/index.html)
* [Process Monitor](https://docs.microsoft.com/en-us/sysinternals/downloads/procmon)

# Documentation used

* Microsoft : [Windows 10 IoT Documentation](https://docs.microsoft.com/en-us/windows/iot-core/)
* Microsoft : [Get started with Windows 10](https://docs.microsoft.com/en-us/windows-hardware/get-started/index)
* Microsoft : [Manufacturer Documentatation](https://docs.microsoft.com/en-us/windows-hardware/manufacture/)
* Microsoft : [Custumize](https://docs.microsoft.com/en-us/windows-hardware/customize/)
* Site : [HowToGeek](https://www.howtogeek.com/)
* Site : [EightForums](https://www.eightforums.com/)