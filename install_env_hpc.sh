#!/bin/bash
module load python/3.8 gcc/9.3.0 arrow
virtualenv ~/ldm
source ~/ldm/bin/activate
pip install --upgrade pip==20.3
pip install -r requirements.txt
pip install --no-index jupyterlab


# create bash script for opening jupyter notebooks https://stackoverflow.com/a/4879146/9214620
cat << EOF >$VIRTUAL_ENV/bin/notebook.sh
#!/bin/bash
unset XDG_RUNTIME_DIR
jupyter-lab --ip \$(hostname -f) --no-browser
EOF

chmod u+x $VIRTUAL_ENV/bin/notebook.sh