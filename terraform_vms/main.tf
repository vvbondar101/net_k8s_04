resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}
resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}


data "yandex_compute_image" "ubuntu" {
  family = var.image_name
}

# resource "yandex_compute_instance" "nlb" {
#   name        = local.name_nlb
#   platform_id = "standard-v1"
#   hostname = local.name_nlb
#   resources {
#     cores         = var.vm_resources.core
#     memory        = var.vm_resources.memory
#     core_fraction = var.vm_resources.core_fraction
#   }
#   boot_disk {
#     initialize_params {
#       image_id = data.yandex_compute_image.ubuntu.image_id
#       size = 10
#     }


#   }
#   scheduling_policy {
#     preemptible = var.vm_premtible
#   }
#   network_interface {
#     subnet_id = yandex_vpc_subnet.develop.id
#     nat       = var.vm_nat
#   }

#   metadata = {
#     serial-port-enable = var.metadata.serial-port-enable
#     ssh-keys           = "ubuntu:${var.metadata.ssh-keys}"
#   }

# }


resource "yandex_compute_instance" "node1" {
  name        = local.name_node1
  platform_id = "standard-v1"
  hostname = local.name_node1
  resources {
    cores         = var.vm_resources.core
    memory        = var.vm_resources.memory
    core_fraction = var.vm_resources.core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
      size = 10
    }


  }
  scheduling_policy {
    preemptible = var.vm_premtible
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = var.vm_nat
  }

  metadata = {
    serial-port-enable = var.metadata.serial-port-enable
    ssh-keys           = "ubuntu:${var.metadata.ssh-keys}"
  }

}


# resource "yandex_compute_instance" "node2" {
#   name        = local.name_node2
#   platform_id = "standard-v1"
#   hostname = local.name_node2
#   resources {
#     cores         = var.vm_resources.core
#     memory        = var.vm_resources.memory
#     core_fraction = var.vm_resources.core_fraction
#   }
#   boot_disk {
#     initialize_params {
#       image_id = data.yandex_compute_image.ubuntu.image_id
#     }
#   }
#   scheduling_policy {
#     preemptible = var.vm_premtible
#   }
#   network_interface {
#     subnet_id = yandex_vpc_subnet.develop.id
#     nat       = var.vm_nat
#   }

#   metadata = {
#     serial-port-enable = var.metadata.serial-port-enable
#     ssh-keys           = "ubuntu:${var.metadata.ssh-keys}"
#   }

# }


# resource "yandex_compute_instance" "node3" {
#   name        = local.name_node3
#   platform_id = "standard-v1"
#   hostname = local.name_node3
#   resources {
#     cores         = var.vm_resources.core
#     memory        = var.vm_resources.memory
#     core_fraction = var.vm_resources.core_fraction
#   }
#   boot_disk {
#     initialize_params {
#       image_id = data.yandex_compute_image.ubuntu.image_id
#     }
#   }
#   scheduling_policy {
#     preemptible = var.vm_premtible
#   }
#   network_interface {
#     subnet_id = yandex_vpc_subnet.develop.id
#     nat       = var.vm_nat
#   }

#   metadata = {
#     serial-port-enable = var.metadata.serial-port-enable
#     ssh-keys           = "ubuntu:${var.metadata.ssh-keys}"
#   }

# }

# resource "yandex_compute_instance" "node4" {
#   name        = local.name_node4
#   platform_id = "standard-v1"
#   hostname = local.name_node4
#   resources {
#     cores         = var.vm_resources.core
#     memory        = var.vm_resources.memory
#     core_fraction = var.vm_resources.core_fraction
#   }
#   boot_disk {
#     initialize_params {
#       image_id = data.yandex_compute_image.ubuntu.image_id
#     }
#   }
#   scheduling_policy {
#     preemptible = var.vm_premtible
#   }
#   network_interface {
#     subnet_id = yandex_vpc_subnet.develop.id
#     nat       = var.vm_nat
#   }

#   metadata = {
#     serial-port-enable = var.metadata.serial-port-enable
#     ssh-keys           = "ubuntu:${var.metadata.ssh-keys}"
#   }

# }



resource "yandex_compute_instance" "master1" {
  name        = local.name_master1
  platform_id = "standard-v1"
  hostname = local.name_master1
  resources {
    cores         = var.vm_resources_master.core
    memory        = var.vm_resources_master.memory
    core_fraction = var.vm_resources_master.core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
      size = 16
    }
  }
  scheduling_policy {
    preemptible = var.vm_premtible
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = var.vm_nat
  }

  metadata = {
    serial-port-enable = var.metadata.serial-port-enable
    ssh-keys           = "ubuntu:${var.metadata.ssh-keys}"
  }

}

# resource "yandex_compute_instance" "master2" {
#   name        = local.name_master2
#   platform_id = "standard-v1"
#   hostname = local.name_master2
#   resources {
#     cores         = var.vm_resources.core
#     memory        = var.vm_resources.memory
#     core_fraction = var.vm_resources.core_fraction
#   }
#   boot_disk {
#     initialize_params {
#       image_id = data.yandex_compute_image.ubuntu.image_id
#     }
#   }
#   scheduling_policy {
#     preemptible = var.vm_premtible
#   }
#   network_interface {
#     subnet_id = yandex_vpc_subnet.develop.id
#     nat       = var.vm_nat
#   }

#   metadata = {
#     serial-port-enable = var.metadata.serial-port-enable
#     ssh-keys           = "ubuntu:${var.metadata.ssh-keys}"
#   }

# }

# resource "yandex_compute_instance" "master3" {
#   name        = local.name_master3
#   platform_id = "standard-v1"
#   hostname = local.name_master3
#   resources {
#     cores         = var.vm_resources.core
#     memory        = var.vm_resources.memory
#     core_fraction = var.vm_resources.core_fraction
#   }
#   boot_disk {
#     initialize_params {
#       image_id = data.yandex_compute_image.ubuntu.image_id
#     }
#   }
#   scheduling_policy {
#     preemptible = var.vm_premtible
#   }
#   network_interface {
#     subnet_id = yandex_vpc_subnet.develop.id
#     nat       = var.vm_nat
#   }

#   metadata = {
#     serial-port-enable = var.metadata.serial-port-enable
#     ssh-keys           = "ubuntu:${var.metadata.ssh-keys}"
#   }

# }