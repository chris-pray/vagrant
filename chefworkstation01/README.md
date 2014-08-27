'vagrant up' will give you a mostly-configured Chef workstation.

It will be bridged to an internal network adapter.

You will need to make sure you have admin.pem and chef-validator.pem

Then run 'knife configure --initial' and follow the prompt.

Now you have a fully-configured Chef workstation.

---

Hostname: chefworkstation01

IP Address: 10.0.0.102

Subnet Mask: 255.255.0.0

---

TODO:
- Give it an FQDN
- Add to internal DNS server
