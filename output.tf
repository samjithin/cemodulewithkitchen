output "instance_name" {
    value       = google_compute_instance.vm_instance.name
    description = "details of the vm"
}