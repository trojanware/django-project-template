echo "Enter Django project name : "
read projectName;

sed -i -e "s/djprotemplate/$projectName/" setup.py buildout.cfg ./src/djprotemplate/settings.py

#Rename the project folder
mv src/djprotemplate src/$projectName

echo "[Executing command] python bootstrap.py"
python bootstrap.py

echo "[Executing command] bin/buildout"
bin/buildout
