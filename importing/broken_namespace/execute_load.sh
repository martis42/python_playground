#!/usr/bin/env sh

echo ""
echo "## "
echo "## implicit namespace packages (aka no init file) and packages with empty init file are not compatible"
echo "## "
echo ""
export PYTHONPATH="empty_init:no_init"
python3 -B load_empty_init_and_no_init.py

echo ""
echo "## "
echo "## explicit namespace packages based on 'pkg_resources' and packages with empty init file are not compatible"
echo "## "
echo ""
export PYTHONPATH="empty_init:pkg_resources_init"
python3 -B load_empty_init_and_pkg_resources_init.py

echo ""
echo "## "
echo "## explicit namespace packages based on 'pkgutils' and packages with empty init file are not compatible"
echo "## "
echo ""
export PYTHONPATH="empty_init:pkgutils_init"
python3 -B load_empty_init_and_pkgutils_init.py

echo ""
echo "## "
echo "## explicit namespace packages based on 'pkg_resources' and implicit namspace packages (aka no init file) are not compatible"
echo "## "
echo ""
export PYTHONPATH="pkg_resources_init:no_init"
python3 -B load_pkg_resources_init_and_no_init.py
