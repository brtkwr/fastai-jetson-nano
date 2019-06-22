# Store jetson clocks setting
if [ ! -f store.conf ]; then sudo jetson_clocks --store store.conf; fi

# We want to use mode 1 when the inlet is restricted to 5V. Use mode 0 for maximum.
sudo nvpmodel -m 1

# Now set everything to max
sudo jetson_clocks

# Save temperature stats
tegrastats | tee temp.txt | cut -f13- -d" "
