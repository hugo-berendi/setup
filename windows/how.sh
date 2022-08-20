echo "How do you want to install the software?"
echo "1. Install via batch file"
echo "2. Install via bash script"
echo "Enter your choice [1/2]: "
read install_method

if [ $install_method -eq 1 ]; then
        echo "Installing via batch file"
elif [ $install_method -eq 2 ]; then
        echo "Installing via bash script"
else
        echo "Invalid choice"
fi