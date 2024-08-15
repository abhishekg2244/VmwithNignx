variable "rgs" {
 description = "resource group details" 
 type = map(any)

}
variable "subnets" {
    type = map(any)
    description = "virtul network "

}
variable "vms" {
    type = map(any)
    description = "vm variable"
  
}
variable "vnets" {
    type = map(any)
    description = "virtul network "
      
}
variable "pips" {
  type = map(any)
  description = "public ip for VM , LB,bastion"
}