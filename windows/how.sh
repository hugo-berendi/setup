echo "How do you want to install the software?"
echo "1. Install via batch file"
echo "2. Install via bash script"
echo "Enter your choice [1/2]: "
read install_method

echo ""
echo "##############################################################################"
echo ""

case "$install_method" in
        1*) echo "batch" ;;
        2*) echo "bash script" ;;
        *)        echo "unknown input: $OSTYPE" ;;
esac