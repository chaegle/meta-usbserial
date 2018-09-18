# Insert copyright here

#
# Enable FTDI driver in kernel config
#
usb_serial_kernel_preconfigure() {
       mkdir -p ${B}

       # FTDI chipset
       kernel_conf_variable USB_SERIAL_FTDI_SIO y
       # Prolific chipset
       kernel_conf_variable USB_SERIAL_PL2303 y
}

do_configure_prepend() {
       usb_serial_kernel_preconfigure
}
