output "instance_name" {
    value       = jsondecode(google_compute_instance.vm_instance.name)
    description = "details of the vm"
}