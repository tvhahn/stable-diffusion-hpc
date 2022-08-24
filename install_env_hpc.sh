#!/bin/bash
module load python/3.8
virtualenv ~/ldm
source ~/ldm/bin/activate
pip install --no-index --upgrade pip
pip install --no-index torch torchvision numpy==1.19.2 jupyterlab
pip install --no-index -r requirements.txt


# create bash script for opening jupyter notebooks https://stackoverflow.com/a/4879146/9214620
cat << EOF >$VIRTUAL_ENV/bin/notebook.sh
#!/bin/bash
unset XDG_RUNTIME_DIR
jupyter-lab --ip \$(hostname -f) --no-browser
EOF

chmod u+x $VIRTUAL_ENV/bin/notebook.sh