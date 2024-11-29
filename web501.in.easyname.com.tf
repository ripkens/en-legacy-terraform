resource "proxmox_vm_qemu" "srv_demo_1" {
        name = "web501.in.easyname.com"
        desc = "web501.in.easyname.com"
        target_node = "pve01"
        sshkeys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDeoDdrEw+oHuPIOWu8WrFpEBdeLNV633Q7SUe2FZ4Q8Byt/L4xjJjeeMym4/LKQxciCGqbHC5VgeoY2oBiH0REG6KkIonjhTeP6Os+tJmZaKR6nffdoBen/RQLz/IEZBaCLSAoTTqn/jhoKzvlIj/FpmFeZOv4N7j7ZWXw604I5Zww9AgaABSTsvzavg071BY7DFNKYHWr186eC75VjuV3ljuvuZVz+ggikeYmBAXmFGiG/R2UpgXk5XPty8xA0JBZqtBh8eG9ON7oQ9kFZqtGRNuHdd0ReXD4pT7ZnzAqIxw00cbGpy44s3oLA+Ny+YLjdJp392EWIxgZyOItsTYhBoGxmxovMT6Ta3hclfwyag9Sw1OvEW+URwVtHW7veh4MATOxIMW1zaq/ElVnMSeg0qstczYNYHK/3uE9C2wlGbEL/uuJKzBWuG44mb54Dzq8GbpXT2ZLwV5uWCMAk7Vz0esjORm9UVZk1fhRIDvlNPpWHTTtWJtaYf/Q+s+M+eRPuEHlJOuC8S/ktvDFDlIU0+piD6J+NPaeShySYbE8BIVSGol/EZe0c5A0ggAnuGjJtv8beC+swBGZP3EWFktVs4Aob85m7Sz1W2QCqNHLpO4OTjIxreB7V7IBH6EQKbktzL6a9WbtObf0MRaIDeErW7bWE84IRnmSf2ejYLT8oQ=="
        agent = 1
        clone = "debian-12-ci"
        qemu_os = "l26"
        cores = 10
        sockets = 2
        cpu = "host"
        memory = 163840
        scsihw = "virtio-scsi-single"

        vga {
                type = "std"
        }

        disk {
                storage = "VM"
                type = "scsi"
                size = "768G"
                discard = "on"
                ssd = "1"
        }

        network {
                bridge = "vmbr0"
                model = "virtio"
        }

        os_type = "cloud-init"
        ipconfig0 = "ip=185.51.9.10/24,gw=185.51.9.1"
        nameserver = "185.51.9.99"
        ciuser = "root"
}
