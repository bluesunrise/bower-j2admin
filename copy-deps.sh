#!/bin/bash
export J2_ADMIN_JETAPP="$HOME/apache/j2-admin/src/main/webapp/jetapp"
export JETAPP_COMPONENTS="$J2_ADMIN_JETAPP/bower_components"
export JETAPP_LICENSES="$J2_ADMIN_JETAPP/bower_licenses"
if [ ! -d $J2_ADMIN_JETAPP ]
then
    echo "Directory $J2_ADMIN_JETAPP does not exist. Cannot copy dependencies"
    exit
fi
if [ ! -d $JETAPP_COMPONENTS ]
then
    echo "Directory $JETAPP_COMPONENTS does not exist. Cannot copy dependencies"
    exit
fi
if [ ! -d $JETAPP_LICENSES ]
then
    echo "Directory $JETAPP_LICENSES does not exist. Cannot copy dependencies"
    exit
fi
echo Copying Bower Dependencies to $J2_ADMIN_JETAPP
cp bower_components/jquery/dist/jquery.js $JETAPP_COMPONENTS/
cp bower_components/html5-boilerplate/dist/js/vendor/modernizr-2.8.3.min.js $JETAPP_COMPONENTS/
cp bower_components/bootstrap/dist/js/bootstrap.js $JETAPP_COMPONENTS/
cp bower_components/lodash/lodash.js $JETAPP_COMPONENTS/
cp bower_components/moment/moment.js $JETAPP_COMPONENTS/
cp bower_components/angular/angular.js $JETAPP_COMPONENTS/
cp bower_components/angular-route/angular-route.js $JETAPP_COMPONENTS/
cp bower_components/angular-bootstrap/ui-bootstrap-tpls.js $JETAPP_COMPONENTS/
cp bower_components/angular-cookies/angular-cookies.js $JETAPP_COMPONENTS/
cp bower_components/ng-grid/ng-grid-2.0.14.min.js $JETAPP_COMPONENTS/
cp bower_components/ng-grid/plugins/ng-grid-flexible-height.js $JETAPP_COMPONENTS/
echo Copying Bower Licenses to $J2_ADMIN_JETAPP
cp bower_components/jquery/MIT-LICENSE.txt $JETAPP_LICENSES/JQUERY_MIT_LICENSE.txt
cp bower_components/html5-boilerplate/LICENSE.md $JETAPP_LICENSES/BOILERPLATE_LICENSE.md
cp bower_components/bootstrap/LICENSE $JETAPP_LICENSES/BOOTSTRAP_LICENSE
cp bower_components/lodash/LICENSE.txt $JETAPP_LICENSES/LODASH_LICENSE
cp bower_components/moment/LICENSE $JETAPP_LICENSES/MOMENT_LICENSE
cp bower_components/angular/MIT_LICENSE $JETAPP_LICENSES/MIT_LICENSE
cp bower_components/ng-grid/LICENSE.md $JETAPP_LICENSES/NG_GRID_LICENSE.md
echo "Copy complete."
