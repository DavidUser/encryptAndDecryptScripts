if [ -z $2 ];
	then
	var=${1}.encrypted;
	else
	var=$2;
fi
var=`echo $var | sed -e "s/\//_/g"`
tar cvzf - $1 | gpg -cv > ${var}
if [[ -e $var && -z $2 ]]
	then
	rm -r $1;
fi
