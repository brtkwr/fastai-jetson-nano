# Store jetson clocks setting
sudo jetson_clocks --store

# We want to use mode 1 when the inlet is restricted to 5V. Use mode 0 for maximum.
sudo nvpmodel -m 1

# Now set everything to max
sudo jetson_clocks

# Save temperature stats
tegrastats | tee temp.txt | cut -f13- -d" "
