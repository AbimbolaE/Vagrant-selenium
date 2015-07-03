Vagrant-Selenium
==============
*Last edited on **3rd, July 2015** by **Abimbola Esuruoso***

This is a project for attaching selenium nodes from a guest OS (*which is managed by Vagrant*) to a selenium hub on a host machine.

Follow the tutorial below to create and install a windows base box on your system. It is important to note that steps 1-3 are only necessary because the modern ie base boxes *at present* do not have [Windows Remote Management service (winrm)](https://en.wikipedia.org/wiki/WS-Management) enabled by default.

After that, simply run `vagrant up` to start the vm and connect the node to selenium grid on your local machine (Obviously, you should start selenium grid as a hub for that to work!).

How To Create A Windows Base Box for Vagrant
-----------------------------------------------------------------

This guide was made following instructions on the Vagrant website and two other tutorials:

	Vagrant Website: https://docs.vagrantup.com/v2/
	Windows Base Box Configuration Tutorial : https://gist.github.com/uchagani/48d25871e7f306f1f8af
	Windows Box Provisioning Tutorial: http://kwilson.me.uk/blog/provisioning-a-windows-server-vagrant-box-with-iis-net-4-5-and-octopus-deploy/

 **Note**: You need to download Vagrant from the Vagrant website (http://www.vagrantup.com/downloads.html) ..The PPA distribution has some known issues

 **Note**: The modern ie images do not have ssh or winrm configured by default. You will need to enable and configure winrm via the Virtualbox
	gui as explained in Step 3.

1. Download the windows image from the [Modern IE website](http://dev.modern.ie/tools/vms/)

2. Add the image to Virtual box and give it a name:

	*File -> Import Appliance -> /path/to/image*

3. Start the VM, follow **ALL** the instructions at [this tutorial](https://gist.github.com/uchagani/48d25871e7f306f1f8af) for the required setup steps for a windows box

	**Note**: Powershell scripting is disabled by default on Windows.

	To enable it do the following:

	- Run a command prompt in administrator mode
	- execute `set-executionpolicy remotesigned`

4. Shutdown the VM and create the Vagrant base box using the following command:

	`vagrant package --base [name of the image in Virtual box]`

	See: http://docs.vagrantup.com/v2/virtualbox/boxes.html for more info..

	*Search for*: "**packaging the box**"

5. Add the box to Vagrant's list of base boxes:

	`vagrant box add [name of the box] /path/to/the/new.box`

6. Install the Vagrant vb-guest plugin using the following command:

	`vagrant plugin install vagrant-vbguest`

7. Create a directory for the vagrant box, and run the following from that directory

	`vagrant init [name of box] e.g.`

8. Run `vagrant up` to test the box, have fun!
