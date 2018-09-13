# @Author: lichenle
# @Date:   2018-7-24 20:37:50
# @Email:  chenle.li@student.ecp.fr
# @Filename: init.bash
# @Last modified by:   lichenle
# @Last modified time: 2018-7-24 22:12:48

while getopts "a:"; do
  case $opt in
    n)
      echo "Varname get."
      ;;
    \?)
      echo "Invalid option."
      ;;
    esac
done

scp -o StrictHostKeyChecking=no /Users/lichenle/.ssh/id_rsa.pub root@$1:/.ssh/id_rsa.pub
ssh -o StrictHostKeyChecking=no root@$1 -p 22 << eeooff

eeooff
