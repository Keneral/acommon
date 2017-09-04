#!/bin/bash
externalRoot="external/"
externalOne="externalOne/"
externalTwo="externalTwo/"
externalThree="externalThree/"

framewoksBaseRoot="frameworks/base/"
framewoksBaseOne="frameworksBaseOne/"

prebuiltsRoot="prebuilts/"
prebuiltsOne="prebuiltsOne/"
prebuiltsTwo="prebuiltsTwo/"
prebuiltsThree="prebuiltsThree/"
prebuiltsFour="prebuiltsFour/"
prebuiltsFive="prebuiltsFive/"

prebuiltsToolsRoot="prebuilts/tools/"
prebuiltsToolsOne="prebuiltsToolsOne/"

vendorRoot="vendor/"
vendorOne="vendorOne/"

mvFunction() {
  if [ -d "$1"  ]; then   #root  doc
     if [ -d "$2" ]; then
        mv -f "$2"* "$1"
        rm -rf "$2"
     else
        echo "$2 complete"      
     fi
		
  else
     echo "$1"    #root error
  fi
 }

mvFunction "$externalRoot" "$externalOne"
mvFunction "$externalRoot" "$externalTwo"
mvFunction "$externalRoot" "$externalThree"
mvFunction "$framewoksBaseRoot" "$framewoksBaseOne"
mvFunction "$prebuiltsRoot" "$prebuiltsOne"
mvFunction "$prebuiltsRoot" "$prebuiltsTwo"
mvFunction "$prebuiltsRoot" "$prebuiltsThree"
mvFunction "$prebuiltsRoot" "$prebuiltsFour"
mvFunction "$prebuiltsRoot" "$prebuiltsFive"
mvFunction "$prebuiltsToolsRoot" "$prebuiltsToolsOne"
mvFunction "$vendorRoot" "$vendorOne"
