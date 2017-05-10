# -*- coding: utf-8 -*-
import os

# Make base directory
BASE_DIR = os.path.join(os.path.dirname(__file__))

# Activate python virtual-env.

activate_env = os.path.join(BASE_DIR, "bin/activate_this.py")
execfile(activate_env, dict(__file__=activate_env))

from bropenstack.app import app as application
