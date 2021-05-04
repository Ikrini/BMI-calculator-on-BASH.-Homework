#!/bin/bash
#HOMEWORK

echo "This is Great BMI Calculator"

while getopts "w:h:" opt
do
case $opt in
             w) echo "$opt $OPTARG"
                weight=$OPTARG ;;
             h) echo "$opt $OPTARG"
                height=$OPTARG ;;
             *) echo "none" ;;
esac
done

echo "weight = $weight"
echo "height = $height"


weight_after=$(( 703 * $weight ))
height_after=$(( $height * $height ))

echo "weight_after = $weight_after"
echo "height_after = $height_after"

if [ $weight -le 0 ]
then
      if [ $height -le 0 ]
      then
              echo "Weight and Height cannot be zero or below."
      fi
else
      bmi=$(( $weight_after / $height_after ))
      echo "Your BMI is"
      echo $bmi
fi

if [ $bmi -lt 18 ]
then
              echo "You're underweight. Let's eat, my Lord !"
else
              if [ $bmi -lt 25 ]
              then
                         echo "You're normal, my Lord. Keep it up !"
              else
                         if [ $bmi -lt 30 ]
                         then
                                 echo "You're overweight. It's fixible, my Lord !"
                         else
                                 if [ $bmi -ge 30 ]
                                 then
                                         echo "You're abese. We didn't genes."
                                 fi
                         fi
              fi
fi

















