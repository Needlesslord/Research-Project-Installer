# Personal Research: Installer

This web page and the [GitHub repository](https://github.com/Needlesslord/Research-Project-Installer) where it is created from are dedicated to what an Installer is and how to create one for your software in Windows using xml integration and NSIS Installer extension to work wih, with small steps and a solution provided. For further information, a bibliography is provided below. 

*__Pro tip!__* *If you do not understand a term or need further help with this documentation, please use IT Dictinary pages such as [Computer Hope](https://www.computerhope.com/) or [Stack Overflow](https://stackoverflow.com/) or contact me directly at needlesslord@gmail.com.*

*__DISCLAIMER! This information is relevant as of may 2020__*

***


## Who am I?

I am [Núria Lamonja i Pujol](https://www.linkedin.com/in/needlesslord/) (GitHub username [*Needlesslord*](https://github.com/Needlesslord), e-mail *needlesslord@gmail.com*), student of the [Bachelor's Degree in Video Games by UPC at CITM-TTC](https://www.citm.upc.edu/ing/estudis/grau-videojocs-bcn/). This content is generated for the second year's subject Project 2, under supervision of lecturer [Ramon Santamaria](https://www.linkedin.com/in/raysan/), tech developer and lead of [raylib technologies](https://www.raylib.com/) and [emegeme](https://www.emegeme.com/).


***


## What is included in this research?

<details>
<summary> Sections </summary>
<br>

 - [What is an *Installer*?](#what-is-an-installer)
 - [Have you seen it in games?](#have-you-seen-it-in-games)
 - [What is the approach to this problem in this research?](#what-is-the-approach-to-this-problem-in-this-research)
 - [Can it be improved?](#can-it-be-improved)
 - [How can YOU do it?](#how-can-you-do-it)
 - [How can you continue improving?](#how-can-you-continue-improving)
 - [Links to documentation](#links-to-documentation)
 - [Further information](#further-information) 


</details>

***


## What is an [*Installer*](https://en.wikipedia.org/wiki/Installation_(computer_programs)#Installer)?

An **Installer**, **Installation Package** or **Application Packaging** is used to install software programs on a system. They simplify the process of installing software by providing the user with a step-by-step process with options to select from which will best suit individual needs. The istallation process for software depends on your OS (operation system) and the program you are installing. 

You may have seen them as executable (they can come in different formats, usually depending on the device) files you open to install games, different softwares and others, with detailed instructions that you usually skip with the "Next" button. This executable (sofware which is a file used by a service) is created to install an application onto an specified device contain the files, registry and logic. They involve the preparation of standard, structured sofware installations targeted for automated deployment and should be prepared for both commercial software and home-made apps. 

They usually **contain more than only the .exe** (executable file). For example, they often contain multiple files in different locations, shorcuts, registry, runtime engines, .NET registration, shell integration, ActiveX controls, databases, and more! As said before, they can also come in different formats, such as Setup.MSI (Microsoft Windows Installer); Setup.exe (Legacy executables); .APPX (Windows store, introduced with Windows 8); Install.vbs, Install.ps1 or Install. bat (Batch or script files), Loose/Raw Files or .dll, .xla, .xlam, .ppam, .dotm, etc. (add-ins or plug-ins), and more!


### What are Installers used for?

Installers can be used to install games on end-user machines. They usually offer full support for a customized user interface, as well as patching.

**Application management costs** can be a problem for many corporate networks due to the expense of the mantainance of desktop and notebook systems. Therefore, new application management techniques are being developed to help enterprises administer their existing PC investments more efficiently. One of them is application packaging, which helps business manage growing volumes of software for desktop and server systems.


### What should you know before installing a software?

 + First of all, you have to make sure **your computer meets the *system/software requirements* of the program you are attempting to install**, it being a game, utility, etc. It is a listing of what software programs or hardware devices are required to operate the program properly and can be found on their packaging or can be found on the Internet. If your computer does not meet the *minimum requirements*, it will probably not run or not even install. Also, if your computer **only** meets the *minimum requirements* but not the *suggested requirements*, it will run, but very slowly. 
*__Pro tip!__* If you do not understand a term used in the requirements (they can be very technical and most people may not be familiar with many IT lingo), the easiest way to understand the meaning behind it is to perform a search on the word. [Computer Hope](https://www.computerhope.com/) or [Stack Overflow](https://stackoverflow.com/) is a very complete web where all these terms and information can be easily found.
 
 + Secondly, you should **check the manual or readme file**, which contains the **exact instructions** on how to install your program and are usually fouund in the same directory (a directory could be compared to a folder, for those who are not familiar with the term) as the installation files. 
 For those of you who may not be ffamiliar with what a "readme file" is, it is a file with the extensions .txt or .md that contains information for the user about the software, such as instructions, additional help and details about patches and updates. Sometimes, the information it contains may not be included in the full documentation, so it is good to check out both. I the readme is not in a .txt file extension, your computer may not know how to open it. You cna choose the Notepad (advised) or any text editor of choice to open the file, since it will only contain text.
 
 
 + *__Pro tip!__* Finally, when installing any new program, it is advised to **first close or disable any running programs** and, after installing it, if it promps you to **reboot the computer**, do so.


### What is the real purpose of Installers?


After all of this, application packages may be a very generic concept to you or you don't fully know why you should use it. Of course, Installers were first created to solve arising problems, and in this section I will talk about the concrete ppurposes and benefits sought.

- First of all, only the simplest applications can work with a simple file copy, and even then you need to have a **convenient** way to actually download and do the copying of the files to the right location.

- The setup is also a **marketing tool**: it can be used for branding and consistency across products. Also, it allows the installation of trial versios of the product.

- A setup provides **upgrade and patching features** for newer versions, as well as **uninstall and cleanup** for the sowftware when the user wants the remove it from the computer.

- **Digital certificates** can be used to sign, to ensure that the file cannot be hampered with in transit or that the vendor is certificable and hence, serious.

- Finally, it can **prevent piracy**, with a solid setup and deployment.


### What is [*Deployment*](https://en.wikipedia.org/wiki/Software_deployment)?

First of all, we need to understad what [*Automated Builds*](https://en.wikipedia.org/wiki/Build_automation) are. In a short and easy way, it is the process of automating the creation of a software build and the associated processes. This means that, with no human interaction, the code will create releases of our software, like different "launches", mainly to have a contingency plan. Imagine you are working on your code, but you made a mistake and it doesn't work anymore; you could go back to a previous version, created automatically, in order to continue working. There are many programs which can do that for you. 

Automated build can be divided in two main parts: *deployment* and [*continuous iteration*](https://en.wikipedia.org/wiki/Continuous_integration). However, we are just going to talk about deployment in this research.

Diving into *deployment*, it is a very simple concept: it is all of the activities that make a software system available for use. The general deployment process consists of several interrelated activities with possible transitions between them. Somethign to take into account is that, since it involves both the producer and the consumer, it has to be customized according to specific requirements or characteristics. 

In short, software deployment includes all the process required for preparing a software application to run and operate in a specific environment. It can bring many advantages, such as it being time saving, enhancing security, enabling to monitoring of user actions, effectiveness in software updates, and more. For more about its advantages, check out the following [link](https://pdf.wondershare.com/business/what-is-software-deployment.html).


#### What should you know about Deployment?

The following part is particular to MSI Tools, which will be introduced below.

The tasks and features included in a setup are very different and they can range from very basic, such as third party tool support, to highly customized tasks. MSI has "custom actions", where you can actually code yourself to deal with unique deployment requirements. In this section, however, I'm only going to be talking about the first one, since custom actions ca be used to improve and go beyond in your Installer.

The set up basics are fundamental to your Installation Package. All third party tools provide good support for there setup fundamentals, but there are some differences. The installation of prerequisites may be the area where third party tools and free frameworks differe the most in terms of ease of use. However, there are some fundamentals that all setups must have built-in.

- They must check if the system is suitable for installation (your computer meets the *system/software requirements*)

- They must scan for presence and, if necessary, install prerequisites and runtimes

- They must provide a competent GUI, which must be suitable for the input of required settings from the user

- They must allow installation in silent mode (for corporate use, mostly)


### Why is Deployment important for the Installer?

As said before, deployment is a simple concept, but it has some things we must take into account, since it can cause errors in the long run. Therefore, I will introduce the most common and important problems that can be generated by the deployment of software applications.

- **Errors are cumulative.** Errors in deployment are cumulative, since once you have deployed an error, you generally have no access to the machine in question to debug, which could do more damage in the long run. A delivery process is being managed, not just debugging and binaries.

- **A disciplined approach is needed.** Deplyoment (setups) is tha complex proces of migrating any computer from one stable state to another; in other words, change the files directory from one computer to another. This requires a disciplined approach. The setup should install all the required files and settings and ensure the product, the software we are creating the installer for, is configured for a fisrts launch to ready to be configured upon launch. This means we need to have a software which won't crash.

- **Setup requirements are always changing and growing.** In addition to technical problems that we may have, we have the list of things a setup may need to do, which with upgrades, changes and advancements in technology, has to also be updated and is continuously growing. New versions of Windows (in this particular case, which could be generalized) seem to bring new obstacles to make deployment harer.

Then, even if it can create problems for our source code and the list of requirements is always growing, is it worth? The answer, of course, is yes. It is actually key for Installation Packages, since it can allow for example, unattended setup, meaning that, taking into account that some installs are toughter than others, it can help you distribute such packags to your computer by recording the changes in your system after it is installed and then these changes are deployed to other computers on your network automatically, so you don't have to do it. To summarize, it only make the life of developers easier, since it simplifies your work, automates the code and the releases and it can prevent errors in the code.


*__For more information about Deployment, please take a look at the research my collegue [Daniel Ruiz](https://github.com/xsiro) did on [Automated Builds](https://github.com/xsiro/RESEARCH) or [Pol Galan](https://github.com/pgalmor) did as well on the same topic [Automated Builds CI/CD](https://github.com/pgalmor/Automated-Builds-CI-CD).__*



***


## Have you seen it in games?

Installation Packages are used broadly, as said before. From programs to games to other type of software. However, in this section, I will show you where you may have seen it in games and how they made your life easier. Mostly, since users are familiar with this way of installing games and also make it really simple, fast and easy all (or almost all) games use Installers.

*Disclaimer! Please note that these pictures are from different years, so the design or usage may be different now.*

<details>
 <summary> <strong> Game shops </strong> </summary>
<br>
 
For example, in Game shops, when you want to use the app instead of the web, you are asked to install them to your computer through an Installation Package. Epic Games and Steam are used as examples below.

Here you can see two different pictures of the Epic Games Launcher Setup, which in this case, since it was in a Windows OS uses MSI. In both of them they are asking for a "Destination Folder" or "directory". This means they installer is asking for a folder where you want to save all the files needed to run the game and possible future downloads.

![Epic-Games-Installer-Directory](https://user-images.githubusercontent.com/51851736/81014839-e39c5e80-8e5d-11ea-8675-8af2289bce46.png)

![Epic-Games-Installer-Directory-2](https://user-images.githubusercontent.com/51851736/81014840-e434f500-8e5d-11ea-9e7b-747972856413.png)

Here you can see how the Epic Games Launcher Setup is installing all the needed files in your computer.

![Epic-Games-Installer-Launcher](https://user-images.githubusercontent.com/51851736/81014841-e4cd8b80-8e5d-11ea-9e3d-d6fea7ca88ea.jpg)

Here you can see how to uninstall a game directly from the Epic Games Store, step by step.

![Epic-Games-Uninstall-Game](https://user-images.githubusercontent.com/51851736/81014843-e4cd8b80-8e5d-11ea-9b8f-5d0848f181a8.png)

The following picture is from Steam's Installer. It shows the License agreement, which you have to accept in order to press "Next".

![Steam-License-Agreement](https://user-images.githubusercontent.com/51851736/81014851-e72fe580-8e5d-11ea-908a-d984f41d7ef6.jpg)

The following two pictures are from installing a game from Steam on a Mac OS (Apple). The first one shows how the end-user can choose whether to create or not shourtcuts and the second one is the message Steam displays once you have already installed your product.

![Steam-Game-Install-Shortcuts](https://user-images.githubusercontent.com/51851736/81014849-e72fe580-8e5d-11ea-89a4-de2d4b6288e6.png)

![Steam-Game-Install-Finish](https://user-images.githubusercontent.com/51851736/81014847-e6974f00-8e5d-11ea-884e-d0b41d4d4684.png)

</details>


<details>
 <summary> <strong> Games </strong> </summary>
<br>
 
In games, for example, you always see them. The following images display different installers for individual games, which are not installed from Game Shops.

Here we can see what is first shown to the user when installing LOL (League of Legends).

![Install-League-of-Legends](https://user-images.githubusercontent.com/51851736/81014844-e5662200-8e5d-11ea-8058-f40517477f2f.jpg)

</details>


<details>
 <summary> <strong> Mods </strong> </summary>
<br>

Of course, Mods for different games also require and almost always use installers. The following picture is for an installation of a Vehicle Mod Pack for the game GTA IV (Grand Theft Auto IV).

![Install-Mods-GTAIV](https://user-images.githubusercontent.com/51851736/81014845-e6974f00-8e5d-11ea-9876-c1d2a04dfdbf.jpg)

</details>

***

## What is the approach to this problem in this research?

This research in particular will be used in an RTS game developed for the same subject, Project 2 taught at CITM-TTC (UPC). The OS (operating system) used to develop it is Windows (in particular, Windows 10 and 8), therefore, we are going to use *MSI* (Microsoft Windows Installer).


### What is [*MSI* (Microsoft Windows Installer)](https://en.wikipedia.org/wiki/Windows_Installer)?

MSI, also known as Microsoft Software Installer or nowaadays as Windows Installer, is an installer package file format used by Windows. MSI files are used for installation, storage and removal of programs. It was developed by Microsoft and it is used for the O of Microsoft Windows, under the [Freeware License](https://en.wikipedia.org/wiki/Freeware).

MSI files are database files, used by Windows Installer. They contain information about an application which is devided into features and components, and every component may hold files, registry data, shortcuts, etc. It also contains the UI that is to be used for installing, and various other data such as any prerequisites to look for, custom actions to execute, the order of the installation procedure, whether to support Administrative installations, etc. It can also contain the actual files to be installed themselves, but this isn't always the case. MSI files are executed by an EXE file that is part of Windows, called MSIEXEC.EXE. This application reads the data in the MSI file and executes the installation.

MSI files are the current recommended way of doing installations on Windows. The alternative is writing a program that performs the installation itself. 


#### Why am I using MSI?

In my particular case, I had to choose with limited options in mind. My small scope of project which is only for a research for my university's degree with no revenue from it made me move towards free software. In addition my computer and my university's computers run on Windows OS and I had to choose a reliable software to work on it. MSI fulfills all the requisits. 

Nevertheless, these are in my particular case, to know what I was looking for. Windows Installer has many built-in functions that will save you time and effort, and here you have a list to show you why I went with it:

- Automatic, install, uninstall, reinstall, reapir support and add/remove components. In addition, if yout software is already installed, instead of showing you the install interface it will show you the mateinance interface.

- In manteinance mode, it will detect which components ofan application are installed and it will allow the user  to add or remove features or reinstall/uninstall the application. In addition, the repair functionality is automatically run everytime a shortcut for the application is activated, which is particularly useful for administrators whose users may clean up the disk's space carelessly.

- Installer’s advertising feature. Advertising allows an application to appear to be installed, but files are not actually installed on the system until the application is activated through a shortcut, extension, or COM server. Advertising makes an application available on the desktop, but since it’s not installed until it is activated, companies save on licensing fees and disk space. Once a user clicks on a shortcut or double-clicks on a file associated with that application, the application installs automatically.

- The same functionality can be written into the application itself. For example, an application may have a particular feature that is rarely used, so it is not installed by default. A developer could put Windows Installer API calls in the code that activates that feature to make it install on demand. Using installation on demand saves disk space and avoids requiring the user to exit the program and rerun the setup to install features that aren’t installed by default.


#### How does the MSI Application Management work?

The Windows Installer service was designed to support every phase of the application management life cycle, providing a service to support each step involved in managing a desktop application from deployment through retirement.

To support these functions, the Windows Installer needs to receive instructions from an installation package.

![MSI-cycle_life](https://user-images.githubusercontent.com/51851736/81513955-793b6080-932c-11ea-8ed2-43e51b91e945.png)


#### What files and components are included in the MSI?

 
Previously, installation packages were always setup.exe files. However, due to inconsistencies in the way independent software vendors and internal software development groups created these installation files, sometimes complications came up when administrators attempted to manage automated installations. Therefore, the emerging standard is for Windows Installer to use the msiexec.exe program to process the installation packages at an end user’s PC. The packages follow a standardized database structure containing the information that Windows Installer requires to install or uninstall an application and to run the user interface for the setup. In overall, The Windows Installer technology is divided into two parts that work in combination; these include a client-side installer service (Msiexec.exe) and a Microsoft Software Installation (MSI) package file. Windows Installer uses information contained in a package file to install the program.

- **.msi file:** A file with .msi extension is a simple database file that can be read by Microsoft Windows Installer service contained in all recent versions of Microsoft Windows. The database contains the files, registry and instructions to the Windows Installer service in order to install the application.

- **Msiexec.exe:** The Msiexec.exe program is a component of Windows Installer. When it is called by Setup, Msiexec.exe uses Msi.dll to read the package (.msi) files, apply any transform (.mst) files, and incorporate command-line options supplied by Setup. The installer performs all installation-related tasks, including copying files to the hard disk, making registry modifications, creating shortcuts on the desktop, and displaying dialog boxes to prompt for user installation preferences when necessary. When Windows Installer is installed on a computer, it changes the registered file type of .msi files so that if you double-click an .msi file, Msiexec.exe runs with that file.

- **MSI Extensions:** Each installation package includes an .msi file containing the installation database, a summary information stream, and data streams for various parts of the installation. The .msi file can also contain one or more transforms, internal source files, and external source files or cabinet files required by the installation. 

Note the following extensions:
 - .msi: Windows Installer database
 - .msm: Windows Installer merge module
 - .msp: Windows Installer patch
 - .mst: Windows Installer transform
 - .idt: Exported Windows Installer database table
 - .cub: Validation module
 - .pcp: Windows Installer patch creation file


#### What does MSI support?

Windows Installer can support many applications installed, from a network share (referred to as an administrative installation), to a locally on an end user’s PC. The downside to using a network share can be that systems receive patches or repairs only when they are connected to the network, which may be a consideration for organizations supporting many notebook users.


##### How do you sign an Application Packaging?

First of all, it is important to understand what [*digital signature*](https://en.wikipedia.org/wiki/Digital_signature) means.  Basically, a digital signature is a mathematical scheme based on algorithms to verify the authenticity of digital messages or documents. They are a standard element of the most cryptographic protocol suits and widely used for software distribution, as well as in other fields, such as financial transactions or contract management software, and it is key to detect forgery or tampering.
 
Signing an application package provides the user with verification that the application data has not been modified after being signed, while confirming the identity of the user or the company that signed it. Therefore, signing an Installer is an importnat thing since you help ensure that tampered files are not installed on end-user computers.

There are many methods and ways to approach this topic, but since we are using .msi files for the deploument of applications, I chose [SignTool.exe](https://docs.microsoft.com/es-es/dotnet/framework/tools/signtool-exe), which is a command line tool that is used to sign an Application Package or a batch of applications with a certificate. This tool is installed in the Bin folder of the Microsoft Windows [Software Development Kit](https://en.wikipedia.org/wiki/Software_development_kit) installation path. Therfore, we need Microsoft Windows SDK to be able to work with SingTool.exe, which you can download [here](https://developer.microsoft.com/en-us/windows/downloads/windows-10-sdk/). [Here](https://stackoverrun.com/es/q/8776869) you will find how ton install SignTool.exe for Windows 10. [Here](https://stackoverflow.com/questions/43636484/how-to-install-signtool-exe-for-vs-2017) you will find a link to learn how to install SignTool.exe for Visual Studio 2017.

The steps are easy:

- First, make sure you have the certificate you want to sign the file with in your computer.
- Then, open a Visual Studio command prompt
- Afterwards, change to the directory that contains the .msi file.
- You can now sign the .msi file using the following command: *__signtool sign /sha1 CertificateHash SetupNameFile.msi__*

[Here](https://www.youtube.com/watch?v=y00n9alXHGs) you have a tutorial on "How to Sign an Executable File using Signtool In Windows" by GlobalSign in Youtube.


##### How can you test an Application in a [*Virtual Machine*](https://en.wikipedia.org/wiki/Virtual_machine)?


###### What is a [*Virtual Machine*](https://en.wikipedia.org/wiki/Virtual_machine)?

Before explaining how to test an application in a Virtual Machine, it is important to undertand the concept and what it is. Basically, a Virtual Machine (VS) is an emulation of a computer system. They are based on computer architectures and provide the same functionality of a physical computer. 

There are different kinds fo virtual machines, each one with different functions:

- [**System virtual machines (VMs).**](https://en.wikipedia.org/wiki/System_virtual_machine) They provide a substitute for the real machine, since they provide the functionalities needed to execute an entire OS, allowing as well multiple environments which are isolated from one another but co-exist in the same physical machine

- [**Process virtual machines.**](https://en.wikipedia.org/wiki/Virtual_machine#Process_virtual_machines) They are designed to execute computer programs in a platform-independent environment.

**The main purpose of VM is to test software in the safest way.** Testing in VM allws to simulate a full operating system, isolated from the rest of our machine, and it's the perfect way to test our setup installer to check whether it works or not in different OS and their previous versions.

###### What is [*VirtualBox*](https://es.wikipedia.org/wiki/VirtualBox)?

There are several tools that you can use to create VM. In my researh, however, I'm going to use VirtualBox, but bear in mind that there are many other and some may be more suitable for you project, depending on the scope, knowledge, etc.

Oracle VM VirtualBox is a free and open-source compatible with Windows, macOS, Linux, Solaris and OpenSolaris. Basically it supports the creation and management of guest virtual machines. It is aimed both for enterprises and home use. Bear in mind that VirtualBox is being actively developed with frequent releases and a growing list of features.

*In the following [link](https://www.virtualbox.org/) you can go to the official web page of VirtualBox.*
*In the following [link](https://www.virtualbox.org/wiki/VirtualBox_PUEL) you can see the license (GNU General Public License (GPL)).*
*In the following [link](https://www.virtualbox.org/wiki/Documentation) you can see the documentation.*


###### How do you work with VirtualBox?


<details>
<summary> Click on me to see how to install VirutalBox </summary>
<br>

The welcome page will be first shown. **Press "Next".**

![1](https://user-images.githubusercontent.com/51851736/81560029-e385ec80-9390-11ea-8769-6982bc4a46da.PNG)

Here you can choose, what install or not to install. **Press "Next".**

![2](https://user-images.githubusercontent.com/51851736/81560030-e41e8300-9390-11ea-84db-bf2f96fe022c.PNG)

Here you can choos how to install said features. **Press "Next".**

![3](https://user-images.githubusercontent.com/51851736/81560032-e41e8300-9390-11ea-8021-1c4694ee9322.PNG)

Now you have a warning. **Press "Yes".**

![4](https://user-images.githubusercontent.com/51851736/81560033-e41e8300-9390-11ea-93ca-4f86ecb70fc0.PNG)

Here is to start installing. **Press "Install".**

![5](https://user-images.githubusercontent.com/51851736/81560034-e4b71980-9390-11ea-9127-6f6de57133b4.PNG)

You will be shown a progress bar. In my case, the download was quick.

![6](https://user-images.githubusercontent.com/51851736/81560035-e4b71980-9390-11ea-89d5-2212247173e8.PNG)

Windows may ask if you trust the software. **Press "Yes".**

![7](https://user-images.githubusercontent.com/51851736/81560348-89395b80-9391-11ea-95b7-7d9a2283f1f8.PNG)

Before installing VirtualBox, please be sure that you install the proper platform package according to your current OS. [Here](https://www.virtualbox.org/wiki/Downloads) you have the link to the download page of VirtualBox.

And you are done!

 ![8](https://user-images.githubusercontent.com/51851736/81560450-b7b73680-9391-11ea-9bfa-51cb7466f656.PNG)
 
 </details>


Obviously, once we have installed VirtualBox we cannot start testing right away. First, it is necessary to create a secluded place where your sofware will be alone to test it.

- First, open Vitual Box and click "New" to create a new virtual machine. You will also need to download the ISO file according to the OS you want to try

- Then, install the operating system of your choice, in our case we will choose Windows, onto the VM

- Before you install anything else, take a snapshot. This will allow you to revert to your original install, without any change of states, after you are done testing.


For a more visual representation, [here](https://www.youtube.com/watch?time_continue=65&v=sB_5fqiysi4&feature=emb_logo) you can find a video by TechGumbo on *How to Use VirtualBox (Begginers Guide)*.

<details>
<summary> To see the screenshots on how to create a new Virtual Machine in your computer step by step, click here </summary>
<br>
 
![A](https://user-images.githubusercontent.com/51851736/81562939-ea632e00-9395-11ea-9861-cbb4cdc7ce80.PNG)
![B](https://user-images.githubusercontent.com/51851736/81562943-eafbc480-9395-11ea-8c31-c2536a8b82f5.PNG)
![C](https://user-images.githubusercontent.com/51851736/81562946-ec2cf180-9395-11ea-9096-9488a9b87733.PNG)
![D](https://user-images.githubusercontent.com/51851736/81562951-ecc58800-9395-11ea-9724-e40ba721e0ee.PNG)
![E](https://user-images.githubusercontent.com/51851736/81562958-ee8f4b80-9395-11ea-920d-d991c036ca2f.PNG)
![F](https://user-images.githubusercontent.com/51851736/81562959-ef27e200-9395-11ea-8766-36a909ad79e0.PNG)
![G](https://user-images.githubusercontent.com/51851736/81562962-f0590f00-9395-11ea-8935-9993d1165e88.PNG)
![H](https://user-images.githubusercontent.com/51851736/81562965-f18a3c00-9395-11ea-9c79-10bc83cca41a.PNG)
![I](https://user-images.githubusercontent.com/51851736/81562967-f222d280-9395-11ea-8250-146ebebc85e6.PNG)
![J](https://user-images.githubusercontent.com/51851736/81562972-f353ff80-9395-11ea-8faa-bea6351efc04.PNG)
![K](https://user-images.githubusercontent.com/51851736/81562973-f3ec9600-9395-11ea-930c-5c47c6ce132f.PNG)
![L](https://user-images.githubusercontent.com/51851736/81562977-f51dc300-9395-11ea-82d2-7c802ddca168.png)
![M](https://user-images.githubusercontent.com/51851736/81562981-f5b65980-9395-11ea-8e62-5b0afaaabb0c.png)
![N](https://user-images.githubusercontent.com/51851736/81562984-f5b65980-9395-11ea-9f01-b123a3e10c5c.PNG)
![O](https://user-images.githubusercontent.com/51851736/81562987-f64ef000-9395-11ea-96ab-f2f30fe1f695.PNG)
![P](https://user-images.githubusercontent.com/51851736/81562988-f6e78680-9395-11ea-91bc-d7f395fd0833.PNG)
![Q](https://user-images.githubusercontent.com/51851736/81562989-f7801d00-9395-11ea-9877-887a96a56c1a.png)
![R](https://user-images.githubusercontent.com/51851736/81562992-f8b14a00-9395-11ea-9025-2935464b4ca1.PNG)

 </details>



### What is [*NSIS*](https://nsis.sourceforge.io/Main_Page)?

**NSIS** stands for *Nullsoft Scriptable Install System*. It is a professional open source system to create Windows installers. It [Here](https://nsis.sourceforge.io/License) you can read the license.

*__DISCLAIMER! I decided to use NSIS due to the fetures it has to offer, but please note that there are a lot of other Installation softwares, such as WiX Toolset or Inno Setup which can be more suitable for you. Some of them are mentioned in sections below with tutorials so you can also learn about them__*


#### What are the features of NSIS?

NSIS is small and flexible, which makes it very suitable for internet distribution. It also has many plug-ins and scripts available to create web installers, communicate with Windows and other software components, install or update components, its custom dialogs and interfaces, multiple languages available, support for web installation and file patching, project integration and different releases and automatic bulds, its portable compiler, its easy and understandable design, and more. 

The most important aspects you have to remember of NSIS are:

- It's main selling point is it small size, which makes it fast and efficient

- Compatible with all major Windows versions, from Windows 95 to Windows 10

- Unique compression methods, from ZLib to, what's most important, LZMA. LZMA is the best compressor nowadays since it hasthe best results with difference

- Multiple languages in one installer, and you can also create your own language files

- Many features and checks for the target system, with your own creation of scripts

- Custom dialogs and interfaces, from custom wizard pages to your own custom interface

- Plug-in system, written in C, C++, Delphi or any other language

- Support for web installation and file patching

- Project integration, different releases and automatic builds, which allows you to easily integrate multiple projects into a single installer or automatically generate installer builds

- Easy and understandable design.

To see the full features of NSIS, here you have a [link](https://nsis.sourceforge.io/Features) to the section dedicated to them from NSIS' web page.


#### How do you install NSIS?

The following images will show you all the steps to install NSIS. In addition, I will show you how to install a package to help you with the creation of scripts for NSIS.

<details>
 <summary><strong> Installing NSIS (and Uninstalling) </strong></summary>
<br>

First of all, you have to go to the download page, you have the link [here](https://nsis.sourceforge.io/Download). In this case, we are downloading the version NSIS 3.05, released Decembre 15th 2019. [Here](https://sourceforge.net/projects/nsis/files/NSIS%203/3.05/RELEASE.html/view) you have the release notes. You just have to **click "Download"** in bold letters under the release date and version.

![1](https://user-images.githubusercontent.com/51851736/81496479-33dd4b80-92b8-11ea-92cc-c9a8f2604bcc.PNG)

<details>
<summary> To see the screenshots on how to install NSIS in your computer step by step, click here </summary>
<br>
 
Once downloaded it, you just have to click the downloaded file, called "nsis-3.05-setup.exe". You will find this file in the "Downloads" directory unless you have specifically changed the directory path or saved it else where. Double click on it and the NSIS installer will start running. You will see this. **Press "Next".**

![2](https://user-images.githubusercontent.com/51851736/81496614-165cb180-92b9-11ea-821d-6bc2bde1c956.PNG)

Next you will be shown the License Agreement. **Press "I agree".** It is advisable to read it throroughly.

![3](https://user-images.githubusercontent.com/51851736/81496612-15c41b00-92b9-11ea-9ed9-2085c326b147.PNG)

Now you will need to choose what components to install. Since one of NSIS' main features is how light it is, you can install them all without worrying about taking up too much space. Therefore, it is advisable to leave the predefined option "Full" in the "Select the type of install". It will only require 7MB. **Press "Next".**

![4](https://user-images.githubusercontent.com/51851736/81496947-9c79f780-92bb-11ea-8699-60ac375200f0.PNG)

Then, you will have to choose the Install location. It is also advisable to leave the destination folder as it is, but you can change it if you wnat to. **Press "Install".**

![5](https://user-images.githubusercontent.com/51851736/81496948-9d128e00-92bb-11ea-9231-4a5eaa3f5e54.PNG)

It will show the following, with a bar loading to show how the install is going. It will take no time due to its size. **Press "Next"** once the install has finished.

![6](https://user-images.githubusercontent.com/51851736/81496949-9d128e00-92bb-11ea-8402-635ea2640190.PNG)

Your software is ready to use! Now you can choose whether you want directly to run NSIS and/or show the release notes. It is advisable to only "Run NSIS" and to untick the other box, this way you can test if NSIS is working well. **Press "Finish".**

![7](https://user-images.githubusercontent.com/51851736/81496950-9dab2480-92bb-11ea-82b5-8b7d3e628849.PNG)

Once you run it this will be shown to you. 

![8a](https://user-images.githubusercontent.com/51851736/81496951-9dab2480-92bb-11ea-80ac-1c7bffb5d55a.PNG)

In addition, this is what it will show you if you had chosen to see the release notes. However, you can find them in the web page too.

![8b](https://user-images.githubusercontent.com/51851736/81496952-9e43bb00-92bb-11ea-8726-7d29a263a7ba.PNG)

To uninstall NSIS, you must double click again the executable called "nsis-3.05-setup.exe". The first you will be shown will be the same as when installing, however, at some point you will be asked "Unistall NSIS" or "Add/Reinstall components". Choose "Uninstall NSIS". After that you need to choose the locaion where all the files related NSIS are and then click "Uninstall". A pregress bar will be shown and after choosing to "Close", NSIS will no longer be in your computer. The following images will show you the process.

![A](https://user-images.githubusercontent.com/51851736/81496953-9e43bb00-92bb-11ea-953d-0f06f293deb5.PNG)
![B](https://user-images.githubusercontent.com/51851736/81496954-9edc5180-92bb-11ea-9a6e-25d35ff17f19.PNG)
![C](https://user-images.githubusercontent.com/51851736/81496955-9edc5180-92bb-11ea-91d6-83d908a620ad.PNG)
![D](https://user-images.githubusercontent.com/51851736/81496956-9f74e800-92bb-11ea-8dc3-c6cba2962d31.PNG)
![E](https://user-images.githubusercontent.com/51851736/81496957-9f74e800-92bb-11ea-854e-65b501cf5198.PNG)

</details>
</details>

<details>
 <summary><strong> Installing/Start using NSIS Quick Setup Script Generator </strong></summary>
<br>

<details>
 <summary> In order to do the TODOS and learn  how to create scripts to create installers, we will help ourselves with NSIS Quick Setup Script Generator. </summary>
<br>

First of all, you have to download the .zip from the following [web page](https://nsis.sourceforge.io/NSIS_Quick_Setup_Script_Generator). There is a link provided to download the package. It can be found in "Links"->"Download", in the line that says "NSIS Quick Setup Script Generator  Nsisqssg.zip (74 KB) the current release.".

![1](https://user-images.githubusercontent.com/51851736/81497300-dba94800-92bd-11ea-8680-17bb71750aac.PNG)

Once downloaded it, you just have to click the downloaded file, called "Nsisqssg.zip". You will find this file in the "Downloads" directory unless you have specifically changed the directory path or saved it else where. We want to unzip the file, so you will have to right-click the file and select "Extract in Nsisqssg\". This will creeate a folder where all the scrips will be saved, both in .nsi format, .ini and .txt. If you go inside this folder, you will find an executable called "NSIS Quick Setup Script Generator.exe". Double click it to start running. **Press "Next".**

![2](https://user-images.githubusercontent.com/51851736/81497296-da781b00-92bd-11ea-866c-891264a28f67.PNG)

After that, the app will start showing you commands, but I will talk about them later, since from this point onwards you are already creating a script. The steps to create said script will be found belown in the exercise.

</details>
</details>



***

## Can it be improved?

There is a lot of room to improve your installers using NSIS. Since you can create your own scripts and produce all the content you need for your own Installer. In addition, some basic scripts can be used, and always come with NSIS when installing.


***


## How can YOU do it?


### What will the TODOs (exercises) teach you *TODO*?

To start with your Installer, as obvious as it may be, you have to install the software first. Above this section you can find how to install NSIS, the program I will be teaching you how to use in order to create an Installer for your game, software adn others.

 - In the first step, to get familiar with NSIS, I will be teaching how to create an executable (.exe) from a .zip. Since this research is aimed mostly to the games developed in the subject Project II taught at CITM and they are delivered in .zip and also are released in Github in the same format, I thought it was a previous step that would be nice to get to know the software and how it works.

 - Now that you already know how to create a very basic Installer, without Icon or any personalization, I will introduce you to .nsi scripts to do so. First of all, they can be created and work from any text editor, so you don't need to install any other softwares. However, bear in mind there are some programs which can help you with scripts. Note though that these scripts have a language you will have to learn. [Here you have a summary](https://atom.io/packages/language-nsis).

 - After that, we are going to create a script with a script generator, as said before. This will include Licenses, app's name, installer's name, directories, and more.
 
 - Finally, I will teach you in the final TODOs how to add an icon to an installer or how to personalize a little bit your Installer's UI, in our case, adding and image. However, you can do much more, and **[here](https://nsis.sourceforge.io/Docs/Modern%20UI/Readme.html) you have a link to other personalization features**.


### What do you have *TODO*?

*__Pro tip!__* If you are using Visual Studio, you can press Ctr+Shift+F and look for "TODO" in all your code. This way you will find the exercises in the code easier

*__Disclaimer! You can find the solutions below.__*


#### TODO0-1: Create an installer from a .zip file

After opening NSI, you are shown different "links" that will take you to different parts of NSIS depending on what you need to do for your Installer. You will have to choose the option from the "Compiler" you belive will lead you to create an executable from a .zip file. Once there, you will need to choose from which .zip you want to take the files of your software, the name of the installer and the default folder. Then, choose "LZMA" and generate your file. You have it!

#### TODO0-2: Learn the NSI language

[Here](https://atom.io/packages/language-nsis) you have a summary of .nsi language.

[Here](https://github.com/Needlesslord/Research-Project-Installer/tree/master/exercises/handout/Test%20Game%20Code/Exercises/TODO0-2) you can find a link to a script with basic syntax errors in this language. Find them all so that it works.

#### TODO1: Using NSIS Quick Setup Script Generator to create a basic script

As said before, we will use this software provided by NSIS to create a basic script. Open the executable and play with it. The interface is very intuitive. After completing all of the fields, you will have your first script in NSIS. Of course, you may not understand some part or if you can leave a field blank, etc, so an explanation on how to use this software can be found in the solutions below.

#### TODO2: Icon Menu

**You will need a bitmap (.bmp).**

In this TODO I will remind you of some .nsi syntax. You will have to add a .nsh for the [MUI](https://en.wikipedia.org/wiki/Nullsoft_Scriptable_Install_System#Modern_user_interface) to control the interface (UI Dialog). In this case, you have to add a "heather image" to personalize your interface. You will have to use "!define" and you must do it under the *!include "MUI.nsh"*. Bear in mind the localization of your script, since in the previous step you chose a directory to both save the .nsi file and a directory where your installer will take the files from.

#### TODO3: Icon executable

**You will need an icon (.ico).** [(If it complains about your icons check this information)](https://nsis.sourceforge.io/Why_does_it_complain_about_my_icons%3F) 

In this TODO  You will have to add a .nsh for the MUI to control the interface (UI Dialog). In this case, you have to add an "executable image" to personalize your setup software. In this case you will have to "!define" an icon. Bear in mind the localization of your script, since in the previous step you chose a directory to both save the .nsi file and a directory where your installer will take the files from.


### How is it done?

#### TODO0-1

Here are all the screenshots on how to do it. First you need to select "Installer based on .ZIP file" under the "Compiler" section. A new window will be opened. You will need to look for the .zip in "Open...", which will let ou browse in your computer. You can then change your installer name and choose the interface design (I left it at "Modern" since it's what we will be using) and then select the "Output EXE File", which if you click "Browse..." you can look for it and select it in your computer. I recommend you to leave LMZA in "Compression" since it's the most efficient out of all of them. **Press "Generate".** You now have your installer, which should look like the last picture.

<details>
 <summary> Click to see the screenshots </summary>
<br>

![1](https://user-images.githubusercontent.com/51851736/81559309-76be2280-938f-11ea-9cc7-c01914a26a6b.PNG)
![2](https://user-images.githubusercontent.com/51851736/81559310-7756b900-938f-11ea-808b-95de1bbfb4ed.PNG)
![3](https://user-images.githubusercontent.com/51851736/81559311-77ef4f80-938f-11ea-8647-ea0e3e1f8e1f.PNG)
![4](https://user-images.githubusercontent.com/51851736/81559312-77ef4f80-938f-11ea-8544-552866fe128a.PNG)
![5](https://user-images.githubusercontent.com/51851736/81559315-7887e600-938f-11ea-9c9c-5d44a5bdf396.PNG)

</details>

If you need more help, [here](https://www.youtube.com/watch?v=PDFITKDbs-M) you have a Youtube video Tutorial by Ivan Angelkoski that may help.

#### TODO0-2

[Here](https://github.com/Needlesslord/Research-Project-Installer/tree/master/exercises/solution/TODO0-2) you can find the script without errors and small explanations. Remember that ";" is used to comment, so the explanations will be after them.

#### TODO1

<details>
<summary><strong> Here there is an explanation on how to use Quick Setup Script Generator. </strong></summary>
<br>

AS stated beforehand, to use this software you just need the executable. Once done, all your scripts will be saved into the same folder, but I'll get to that later. Open the executable and **Press "Next"**.

![A](https://user-images.githubusercontent.com/51851736/81554952-f516c680-9387-11ea-95db-b5f9c250f03a.PNG)

Here is where you will start creating your script with the help of your software. In this section you are asked for a "New project name". You can also "Load a previously saved project", but since we are creating a script from scratch we will not use that feature. Here you can write down the name of your game, in my case Test_Game_Pong. The following two images are used as a how it is first shown and what I have written for the example used in this research. **Press "Next".**

![B1](https://user-images.githubusercontent.com/51851736/81554954-f5af5d00-9387-11ea-96ad-5f5143bab671.PNG)
![B2](https://user-images.githubusercontent.com/51851736/81554957-f5af5d00-9387-11ea-9610-6f3c1a31abd2.PNG)

Now, you have to put a lot more information about your software. You will need to write in each field You game name, who developed it, under which license, the version it is done for, etc. There are some fields you don't have to fill, like the license one. I recommend you choose in the compression type *LZMA*, since it's top one at the moment. To add a License, you will need it in .txt format; you just have to press the the button next to it (it has "...") and browse in your computer to add it. I also recommend you to choose "Install for all users". You can see how I filled out the information and what is shown before changing anything. **Press "Next".**

![C1](https://user-images.githubusercontent.com/51851736/81554958-f647f380-9387-11ea-8edf-55538f9cf959.PNG)
![C2](https://user-images.githubusercontent.com/51851736/81554960-f647f380-9387-11ea-9237-f20823c918fd.PNG)

In the next step, you are going to basically select what's going inside the end-user. You will need to look for the executable first. In the "Main exe" section, you need to press the button "..." and browse through your computer for the game's executable. Then, in "Add files", you will need to add what the game or software needs to run. In our particular case, in the Pong game provided, there is a folder called "Game", with 2 different folders. You need to browse clicking "..." and add "Game". Then, next to the "..." button, you have to tick "Include subdirectories" in order to also add all the files which are in other folders inside "Game", the main folder. You don't need "Additional Installation Files" in this case, but you can do it in this section too. **Press "Next".**

![D1](https://user-images.githubusercontent.com/51851736/81554961-f6e08a00-9387-11ea-8942-9c0d278f3b1a.PNG)
![D2](https://user-images.githubusercontent.com/51851736/81554963-f6e08a00-9387-11ea-815a-5d4d9a67aee4.PNG)

Before generating the script, you will need to say how you want the Start Menu and set the compiler preferences. In this case, I chose to tick to "Create a desktop shortcut as well", to add a shortcut of the game in the end-user computer's desktop. This is what's most important about this section with the compiler preferences. For the other ticks, I chose to also tick them in order to give the end-user more options, but it will depend on your needs, which may not be the same as mine. In the "Compiler Preferences" section you will be choosing where to save your Installer and its name, which you don't need to touch at all and it will be automatically set to "setup.exe" in the folder you first opened NSIS-QSSG. It's important to tick "Save compiled script for further editing", since we will be adding things in the following TODOs. I also chose to "Also open up saved script in editor" to continue working. **Press "Generate".** You will be asked "Do you want to save/update the current project settings?", say **"YES"**.

![E1](https://user-images.githubusercontent.com/51851736/81554964-f7792080-9387-11ea-9e4b-bd3810a036fe.PNG)
![E2](https://user-images.githubusercontent.com/51851736/81554966-f7792080-9387-11ea-81ad-b37ec5e0060c.PNG)
![E3](https://user-images.githubusercontent.com/51851736/81554968-f7792080-9387-11ea-8d59-c12fefcdf9d1.PNG)

Shortly after, the script will start generating and a pop-up will say it is "Done!". **Press "Accept".** Then **Press "Close".**

![F](https://user-images.githubusercontent.com/51851736/81554969-f811b700-9387-11ea-803c-0a75453b8322.PNG)
![G](https://user-images.githubusercontent.com/51851736/81554971-f811b700-9387-11ea-9385-360e1c01cc03.PNG)

Here you have your script!

![H](https://user-images.githubusercontent.com/51851736/81554973-f8aa4d80-9387-11ea-9414-1ad1ce7e7bd9.PNG)

</details>

As said, everything will be saved in the NSI-QSSG folder in your computer. The following files will be generated (the name is for the game and code I provided):

- Test_Game_Pong.ini
- Test_Game_Pong.log
- Inside "Output" folder: 
   + Test_Game_Pong (folder):
      - Test_Game_Pong.nsi
      - Test_Game_Pong_setup.exe
      - Test_Game_Pong.nsi.bak (in case of choosing to edit your file)

If you want to edit your file again with NSIS-QSSG you will need to open the .ini file. To continue working to add your own code, you will need the .nsi file.

<details>
<summary><strong> THIS IS HOW YOUR INSTALLER SHOULD LOOK NOW </strong></summary>
<br>
 
![1](https://user-images.githubusercontent.com/51851736/81557528-6a849600-938c-11ea-843f-9cd37ec427c5.PNG)
![2](https://user-images.githubusercontent.com/51851736/81557531-6b1d2c80-938c-11ea-9b7e-761c605ab969.PNG)
![3](https://user-images.githubusercontent.com/51851736/81557532-6c4e5980-938c-11ea-9d16-2fca40fcd051.PNG)
![4](https://user-images.githubusercontent.com/51851736/81557536-6ce6f000-938c-11ea-97be-8d6a5f8f389b.PNG)

</details>

#### TODO2

Here, as said before, you have to add an image to the heather. You must add it after "MUI.nsh" is added, since what we need is inside it. 

![todo2a](https://user-images.githubusercontent.com/51851736/81557709-b6373f80-938c-11ea-930a-1b8e295f28c1.PNG)

We will add it just after "MUI.nsh" to avoid conflicts. You will need to define *!define* your variable/function. Ths first line is to initialize, the second one is asking for a bitmap (.bmp) and the third one is for the position. In our case, we have the image in the same folder as the file and "Game" foder, so there's no need to write the directoy. If you need to, "FolderName/Image.bmp" is how to do it.

![todo2](https://user-images.githubusercontent.com/51851736/81557707-b59ea900-938c-11ea-9242-ca3bbb27eac9.PNG)


#### TODO3

To add an icon to your installer we are also using MUI, therefore, it will be written just below the previous TODO. It works in the same way the Bitmap image for the heather (TODO2, second line), you are defining and icon, so you have to add "Icon.ico" and in case it's not in the same folder, you will need to add the path.

![todo3](https://user-images.githubusercontent.com/51851736/81557711-b6373f80-938c-11ea-8101-af5a84942d6c.PNG)

<details>
<summary><strong> THIS IS HOW YOUR INSTALLER SHOULD LOOK NOW </strong></summary>
<br>


![1](https://user-images.githubusercontent.com/51851736/81558754-8ab55480-938e-11ea-855f-e0e888789ba9.PNG)
![2](https://user-images.githubusercontent.com/51851736/81558758-8b4deb00-938e-11ea-8e1f-7ba3356b6dd7.PNG)
![3](https://user-images.githubusercontent.com/51851736/81558760-8be68180-938e-11ea-9314-ad7b2e4e08cb.PNG)
![4](https://user-images.githubusercontent.com/51851736/81558761-8be68180-938e-11ea-9b79-621cdb33b9f6.PNG)
![5](https://user-images.githubusercontent.com/51851736/81558762-8be68180-938e-11ea-90e9-1e0dfd0a6899.PNG)

</details>

This last picture shows the files I have in my folder at the moment.

*__Pro tip!__* After all the TODOs, to create your working Installer, youu need to open NSIS and choose the option below "Compiler" called "Compile NSI scripts". This will open a new window. In "File" you have choose "Load script" and choose the .nsi file you want to create your installer from. It will run automatically: red if your code doesn't compiler, orange if there are warning and green if neither of those. Your installer will be generated automatically and you can **Press "Test Installer"** to see how it works.

### Where can you find the exercise?


[Here you can find the link to the exercise](https://github.com/Needlesslord/Research-Project-Installer/tree/master/exercises/handout/Test%20Game%20Code/Exercises)

[Here you can find the final result](https://github.com/Needlesslord/Research-Project-Installer/tree/master/exercises/handout/Test%20Game%20Release)

[Here you can find the solution](https://github.com/Needlesslord/Research-Project-Installer/tree/master/exercises/solution)


***


## How can you continue improving?

If you want to **Import a root certificate**, you can go to the following [link](https://nsis.sourceforge.io/Import_Root_Certificate) where it is explained how to do so silently.


To continue learning about installers, I propose that you do those exercises on these other installers, which are [WiX Toolset](https://en.wikipedia.org/wiki/) and [Inno Setup](https://jrsoftware.org/isinfo.php).

- **Inno Setup** is a free installer for Windows programs. [Here](https://jrsoftware.org/isinfo.php#features) you can see its features, from where I will highlight the support they offer, the creation of a single EXE and customizable setup types, as well as uninstall capabilities, shortcuts, multilingual, supports encrypted and passwarded installs as well as digital signs, and its full source code is available from [GitHub](https://github.com/jrsoftware/issrc). [Here](https://jrsoftware.org/ishelp/) you will find its documentation. [Here](https://jrsoftware.org/files/is/license.txt) you can read the license.

    + Here you have some tutorials with Inno Setup:
      - [YouTube: How To Create Setup File Using Inno Setup Compiler](https://www.youtube.com/watch?v=Gzx-WeJ6CNo)
      - [Supinfo, International University: Create installer with inno setup](https://www.supinfo.com/articles/single/7176-create-installer-with-inno-setup)


 - **WiX Toolset**, is short for *Windows Installer XML Toolset*, is a free software toolset that builds Windows Installer packages from [XML](https://en.wikipedia.org/wiki/XML). For those which are not familiar with XML, it is a [markup language](https://en.wikipedia.org/wiki/Markup_language) (a system for annotating a document in a way that is **syntactically distinguishable** from the text, which means that, when the document is processed to display it, the markup language, what you have written, it is not shown, since it is only used to give format to the text) widely used, remarkably because it is used across the Internet. It uses C++ and C# and the target OS is always Windows, as the name itself indicates. *In the following [link](https://wixtoolset.org/) you can go to the official web page of WiX Toolset.* The following [link](https://wixtoolset.org/) leads to the official web page of WiX Toolset. MSBuild is supported from the command line, Visual Studio, and Team Build and includes several extensions that offer functionality beyond that of Windows Installer. You can also create setup bundles that install prerequisites like the .NET Framework and other runtimes along with your own product. In addition, you have custom actions, where you can code if you want to go further in your Installer. In the following [link](https://wixtoolset.org/development/wips/) you can go to the official web page of WiX Toolset, to the WiX Improvement Proposals. If you want to master WiX Toolset, the following links will lead you to other tutorials which may be useful:

   + [Here](https://www.firegiant.com/wix/tutorial/) you have a link with another tutorial with another approach on how to use the WiX Toolset.
   + [Here](https://carlosupc.github.io/Installer-Research/) you will find another research on installers using the WiX Toolset.
      
 - [Here](https://www.advancedinstaller.com/user-guide/tutorial-simple.html) you have another very simple tutorial aimed at those with **NO PREVIOUS EXPERIENCE** in using [*__Advanced Installer__*](https://www.advancedinstaller.com/), using the [Freeware edition](https://www.advancedinstaller.com/top-freeware-features.html). However, this tool, which is very powerful and easy to use, it is only available on trial for 30 days, after which you have to [pay](https://www.advancedinstaller.com/purchase.html).


***


## Links to documentation

<details>
<summary> Here are the links and references where I got all the information I used to create this research. </summary>
<br>

- [Computer Hope: Installer](https://www.computerhope.com/jargon/i/installer.htm)
- [Computer Hope: System requirements](https://www.computerhope.com/jargon/s/systrequ.htm)
- [Computer Hope: How to install software](https://www.computerhope.com/issues/ch000561.htm)
- [Computer Hope: Readme](https://www.computerhope.com/jargon/r/readme.htm)
- [Installer Research](https://carlosupc.github.io/Installer-Research/)
- [Soft Zone: Cómo instalar aplicaciones .Appx o .AppxBundle en Windows 10](https://www.softzone.es/2017/01/04/instalar-aplicaciones-appx-appxbundle-windows-10/) *(Spanish)*
- [Search Enterprise Desktop: AppX file](https://searchenterprisedesktop.techtarget.com/definition/AppX-file)
- [FileInfo: .APPX File Extension](https://fileinfo.com/extension/appx)
- [Stack Overflow: What are the benefits of a MSI installer over a standard setup.exe?](https://stackoverflow.com/questions/3976241/what-are-the-benefits-of-a-msi-installer-over-a-standard-setup-exe)
- [Wikipedia: Windows Installer](https://en.wikipedia.org/wiki/Windows_Installer)
- [Wikipedia: Software deployment](https://en.wikipedia.org/wiki/Software_deployment)
- [Wikipedia: Installation (computer programs)](https://en.wikipedia.org/wiki/Installation_(computer_programs))
- [Stack Overflow: How can I create an MSI setup?](https://stackoverflow.com/questions/1042566/how-can-i-create-an-msi-setup)
- [Firegiant: WiX Toolset Tutorial](https://www.firegiant.com/wix/tutorial/)
- [Wikipedia: VirtualBox](https://es.wikipedia.org/wiki/VirtualBox)
- [Wikipedia: Virtual Machine](https://en.wikipedia.org/wiki/Virtual_machine)
- [VirtualBox](https://www.virtualbox.org/)
- [Wikipedia: WiX](https://en.wikipedia.org/wiki/WiX)
- [WiX Toolset](https://wixtoolset.org/)
- [Wix Toolset: WiX Improvement Proposals](https://wixtoolset.org/development/wips/)
- [NSIS](https://nsis.sourceforge.io/Main_Page)
- [NSIS: Features](https://nsis.sourceforge.io/Features)
- [NSIS: License](https://nsis.sourceforge.io/License)
- [Inno Setup](https://jrsoftware.org/isinfo.php)
- [Inno Setup: Features](https://jrsoftware.org/isinfo.php#features)
- [Inno Setup: GitHub](https://github.com/jrsoftware/issrc)
- [Inno Setup: Documentation](https://jrsoftware.org/ishelp/)
- [Inno Setup: License](https://jrsoftware.org/files/is/license.txt)
- [Pdf Element: What is Software Deployment and the Advantages](https://pdf.wondershare.com/business/what-is-software-deployment.html)
- [Total Software Deployment](https://www.total-software-deployment.com/)
- [Soft Inventive: Creating a software installation package for deployment](https://docs.softinventive.com/tsd/techpaper/creating-a-software-installation-package-for-deployment)
- [Wikipedia: Freeware License](https://en.wikipedia.org/wiki/Freeware)
- [Whatis: MSI File format](https://whatis.techtarget.com/fileformat/MSI-Installer-package-Microsoft-Windows)
- [Broadcom: Understanding the Difference Between .exe and .msi](https://community.broadcom.com/symantecenterprise/communities/community-home/librarydocuments/viewdocument?DocumentKey=0e501eb2-b17e-471a-abcb-a638045342ce&CommunityKey=41d8253b-a238-4563-8718-ed7623beafbc&tab=librarydocuments)
- [Wikipedia: System virtual machines (VMs)](https://en.wikipedia.org/wiki/System_virtual_machine)
- [YouTube: *How to Use VirtualBox (Begginers Guide)*, by TechGumbo](https://www.youtube.com/watch?time_continue=65&v=sB_5fqiysi4&feature=emb_logo)
- [Wikipedia: Digital signature](https://en.wikipedia.org/wiki/Digital_signature)
- [Microsoft Build: SignTool.exe (Sign Tool)](https://docs.microsoft.com/es-es/dotnet/framework/tools/signtool-exe)
- [Wikipedia: Software Development Kit](https://en.wikipedia.org/wiki/Software_development_kit)
- [Youtube: How to Sign an Executable File using Signtool In Windows](https://www.youtube.com/watch?v=y00n9alXHGs)

*Some of the images were taken from Google Images. All the screenshots for the tutorials were done by me. Credit goes to their respective authors.*

</details>

***

## Further information

<details>
<summary> About Automated Builds: </summary>
<br>

 + [Automated Builds](https://github.com/xsiro/RESEARCH)

</details>


<details>
<summary> About other tools to create a Windows Installer Package: </summary>
<br>

 + [Help Desk Geek: 4 Great Tools to Create Windows Installer Packages](https://helpdeskgeek.com/free-tools-review/4-tools-to-create-windows-installer-packages/)
 + [Microsoft: Create an MSIX package from any desktop installer (MSI, EXE, ClickOnce, or App-V)](https://docs.microsoft.com/en-us/windows/msix/packaging-tool/create-app-package)
 + About Advanced Installer: 
    - [Official web](https://www.advancedinstaller.com/)
    - [Features of the Freeware edition](https://www.advancedinstaller.com/top-freeware-features.html)  
    - [Youtube *(includes tutorials)*](https://www.youtube.com/user/AdvancedInstaller)
 + About NSIS:
     - [NSIS](https://nsis.sourceforge.io/Main_Page)
     - [NSIS: Features](https://nsis.sourceforge.io/Features)
     - [NSIS: License](https://nsis.sourceforge.io/License)
 + About Inno Setup:
    - [Inno Setup](https://jrsoftware.org/isinfo.php)
    - [Inno Setup: Features](https://jrsoftware.org/isinfo.php#features)
    - [Inno Setup: GitHub](https://github.com/jrsoftware/issrc)
    - [Inno Setup: Documentation](https://jrsoftware.org/ishelp/)
    - [Inno Setup: License](https://jrsoftware.org/files/is/license.txt)
    - [YouTube: How To Create Setup File Using Inno Setup Compiler](https://www.youtube.com/watch?v=Gzx-WeJ6CNo)
    - [Supinfo, International University: Create installer with inno setup](https://www.supinfo.com/articles/single/7176-create-installer-with-inno-setup)
 + About WiX Toolset and how it could be improved:
    - [Wix Toolset: WiX Improvement Proposals](https://wixtoolset.org/development/wips/)

    
</details>


<details>
<summary> About Deployment and Automated Builds: </summary>
<br>
    - [Automated Builds](https://github.com/xsiro/RESEARCH)
    - [Automated Builds CI/CD](https://github.com/pgalmor/Automated-Builds-CI-CD)
    - [Pdf Element: Best 5 Software Deployment Tools for Enterprise](https://pdf.wondershare.com/business/software-deployment-tools.html)

</details>
