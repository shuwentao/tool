#!/bin/bash

rm *txt*

bayerPicPath=$1

picWidth=3840 
picHeight=2160

bayerHeight=1080
paddingNum=6

bayerWidthPadding=1932
bayerHeightPadding=1092
patchWidth=8
patchHight=8
stride=2

bayerPicSplitOut1=b2p1.tmp.txt
bayerPicSplitOut2=b2p2.tmp.txt
bayerPicSplitOut3=b2p3.tmp.txt
bayerPicSplitOut4=b2p4.tmp.txt

picPaddingOut1=p2p1.tmp.txt
picPaddingOut2=p2p2.tmp.txt
picPaddingOut3=p2p3.tmp.txt
picPaddingOut4=p2p4.tmp.txt

patchGenOut1=dct_input.txt0
patchGenOut2=dct_input.txt1
patchGenOut3=dct_input.txt2
patchGenOut4=dct_input.txt3

/home/wentao/tool1/dct_tool/bayerPicSplit/bayerPicSplit.py ${bayerPicPath} ${picWidth} ${picHeight} ${bayerPicSplitOut1} ${bayerPicSplitOut2} ${bayerPicSplitOut3} ${bayerPicSplitOut4}
echo "bayerPicSplit end!!!"

/home/wentao/tool1/dct_tool/picPadding/picPadding.py ${bayerPicSplitOut1} $bayerHeight $paddingNum $paddingNum $paddingNum $paddingNum $picPaddingOut1 
echo "picPadding phase 1 end!!!"
/home/wentao/tool1/dct_tool/picPadding/picPadding.py ${bayerPicSplitOut2} $bayerHeight $paddingNum $paddingNum $paddingNum $paddingNum $picPaddingOut2 
echo "picPadding phase 2 end!!!"
/home/wentao/tool1/dct_tool/picPadding/picPadding.py ${bayerPicSplitOut3} $bayerHeight $paddingNum $paddingNum $paddingNum $paddingNum $picPaddingOut3 
echo "picPadding phase 3 end!!!"
/home/wentao/tool1/dct_tool/picPadding/picPadding.py ${bayerPicSplitOut4} $bayerHeight $paddingNum $paddingNum $paddingNum $paddingNum $picPaddingOut4 
echo "picPadding phase 4 end!!!"

/home/wentao/tool1/dct_tool/patchGen/patchGen.py $picPaddingOut1 $bayerWidthPadding $bayerHeightPadding $patchWidth $patchHight $stride $patchGenOut1 
echo "patchGen phase 1 end!!!"
/home/wentao/tool1/dct_tool/patchGen/patchGen.py $picPaddingOut2 $bayerWidthPadding $bayerHeightPadding $patchWidth $patchHight $stride $patchGenOut2 
echo "patchGen phase 2 end!!!"
/home/wentao/tool1/dct_tool/patchGen/patchGen.py $picPaddingOut3 $bayerWidthPadding $bayerHeightPadding $patchWidth $patchHight $stride $patchGenOut3 
echo "patchGen phase 3 end!!!"
/home/wentao/tool1/dct_tool/patchGen/patchGen.py $picPaddingOut4 $bayerWidthPadding $bayerHeightPadding $patchWidth $patchHight $stride $patchGenOut4 
echo "patchGen phase 4 end!!!"



