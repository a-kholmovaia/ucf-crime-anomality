# creates a venv folder that contains a copy of python3 packages to isolate any further changes in packages from the system installation
python3.8 -m venv venv
 # tell the shell to use the created virtual environment
source venv/bin/activate
# install requirements
# for pytorch
pip3.8 install Pillow==9.5.0
pip3.8 install torch==1.6.0 torchvision==0.7.0
pip3.8 install numpy
pip3.8 install gluoncv
# run the script
python3.8 feat_extract_pytorch.py --config-file i3d_nl10_resnet101_v1_kinetics400_val.yaml
# remove the venv
rm -rf venv
# deactivate the virtual environment
deactivate

