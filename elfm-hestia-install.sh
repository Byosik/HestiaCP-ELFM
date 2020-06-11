#!/bin/bash
function elfminstaller() { 
echo "HestiaCP. Installing ELFM...." 
cd /usr/local/hestia/web/list
wget https://github.com/Byosik/HestiaCP-ELFM/blob/master/elfm.tar -O elfm.tar
tar -xf elfm.tar
rm -rf elfm.tar
# Add the link to the panel.html file 
if grep -q 'elfm' /usr/local/hestia/web/templates/admin/panel.html; then
		echo 'Already there.'
	else 
sed -i '/<a alt="<?=__(\x27Notifications/i <div class="l-menu__item"><a href="/list/elfm/" alt="<?=__('elfm')?>" class="l-profile__logout"><i class="fas fa-folder-open"></i></a></div>' /usr/local/hestia/web/templates/admin/panel.html;
fi
echo "Done! Check HestiaCP!" 
}
elfminstaller
