**What are some of the key design philosophies of the Linux operating system?**

[This website list 9 major tenets](https://opensource.com/business/15/2/how-linux-philosophy-affects-you)

The major concept seems to be Linux is a open source software, meaning it is freely available to anyone to modify.

[Good Article comparing OS appoach to users](https://opensource.com/business/14/12/linux-philosophy)

**In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?**
A VPS is a virtual machine that runs it own OS. Instead of having one dedicated server, you are "renting" space in a server with other VPS's and your VPS has access only to it's own OS, disc space, and bandwidth.
* Economical option compared to buying a dedicated hosting on a physical server
* Customizable to your needs
* More control then you have with shared hosting


**Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?**
It defeats the security of the system. For security purposes users should only be given the privileges they need to protect the system. The root user is special and should be only used in certain situations since they have full privileges. If you run a program on root and that program gets hacked then your whole server is vulnerable because root has access to your whole server. 
