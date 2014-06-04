#/bin/bash

appRoot="/home/xiejl/OSS/PAQM"
quantileTable="$appRoot"/data/mozillaNew/quantileTable
threshold="$appRoot"/data/mozillaNew/predictThresholds

if [ $# -eq 2 ]; then
    $appRoot/bin/application/setThresholdsByQuantiles.py $quantileTable $1 $2 > $threshold
fi
    
sed 's/;/,/g' $threshold


#cat "$threshold"
#> "$threshold"





#model="$appRoot"/data/mozilla/model_assigning.r

#if [ $# -eq 2 ]; then
#	thre=`R --slave <<EOF
#	source("$appRoot/bin/rscript/predictAssi.r")
#	set_threshold("$model",$1,$2)
#	#EOF`
#	echo "$thre" > "$threshold"
#fi
#echo "$threshold"
#sed 's/;/,/g' "$threshold"
