echo "Please enter your role"
read role
case $role in
 admin)
     echo "Welcome, Admin! You have full access.";;
 editor)
     echo "Welcome, Editor! You can edit content.";;
 viewer) 
     echo "Welcome, Viewer! You can only view content.";;
 *)
    echo "Invalid role, please enter admin, editor or viewer";;
esac
