echo "OS version: "
uname -a
echo

echo "Users: "
cat /etc/passwd | grep "/bash$" | cut -d: -f1
echo

echo "Open ports: "
sudo ss -tuln
