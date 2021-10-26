## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

<img width="1385" alt="Diagram Of Azure Cloud" src="https://user-images.githubusercontent.com/87278815/138806202-1846ccbb-1cda-4cda-8a2f-e533e8a55609.PNG">


These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the .yml file may be used to install only certain pieces of it, such as Filebeat.

[my-playbook.yml](https://github.com/anthonydestephano/AD-Playbook/blob/7db8991c3f005393b1a77d3bec66ef69fd1c1e10/Ansible/my-playbook.yml)

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.
This ensures that the webservers will not take on a heavy load at one time and redirect the traffic to make sure that they do not breakdown.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system traffic.
- Filebeat works with logstash to make sure data is organized and funneling properly to prevent breakdown on the backend. Its main purpose is to simplify collection, parsing, and visualization of log files coming in.
- Metricbeat collects statistcal data about system operations such as apache and mysql to help monitor your system. In this case, Metricbeat is keeping track of the docker containers being utilized as well as the original machine it was installed on.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System   |
|----------|----------|------------|--------------------|
| Jump Box | Gateway  | 10.0.0.1   |Linux Ubuntu (18.04)|
| Web-1    | Webserver| 10.0.0.9   |Linux Ubuntu (18.04)|
| Web-2    | Webserver| 10.0.0.11  |Linux Ubuntu (18.04)|
| Elk      | Elk Stack| 10.1.0.4   |Linux Ubuntu (18.04)|

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
 -The IP of the Host.

Machines within the network can only be accessed by SSH (Port 22).
The Elk machine is only accessible through SSH from the Jumpbox. (IP: 20.112.97.49)

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses                   |
|----------|---------------------|----------------------------------------|
| Jump Box | Yes                 | Host IP                                |
| Web-1    | No                  | LB-20.83.243.181/Jumpbox-10.0.0.4 (SSH)|
| Web-2    | No                  | LB-20.83.243.181/JumpBox-10.0.0.4 (SSH)|
| Elk      | No                  | Jumpbox-10.0.0.4 (Port 5601)           |
### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _TODO: What is the main advantage of automating configuration with Ansible?_

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- ...
- ...

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.
<img width="1334" alt="Elk Containter Screenshot" src="https://user-images.githubusercontent.com/87278815/138806236-66100f0d-dc9d-4f24-95de-53067294ea89.PNG">


### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
