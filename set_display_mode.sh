#!/system/bin/sh
echo 720p60hz > /sys/class/display/mode
echo 0 > /sys/class/graphics/fb0/free_scale
echo 1 > /sys/class/graphics/fb0/freescale_mode
echo 0 0 1279 719 > /sys/class/graphics/fb0/free_scale_axis
echo 0 0 1279 719 > /sys/class/graphics/fb0/window_axis
echo 0x10001 > /sys/class/graphics/fb0/free_scale
echo 0 > /sys/class/graphics/fb1/free_scale

