read x
read y
read z

if ([ "$x" -eq "$y" ] && [ "$x" -ne "$z" ]) || ([ "$x" -eq "$z" ] && [ "$x" -ne "$y" ]) || ([ "$y" -eq "$z" ] && [ "$x" -ne "$z" ]); then
    echo "ISOSCELES"
elif [ "$x" -eq "$y" ] && [ "$x" -eq "$z" ] && [ "$y" -eq "$z" ]; then
    echo "EQUILATERAL"
elif [ "$x" -ne "$y" ] && [ "$y" -ne "$z" ] && [ "$x" -ne "$z" ]; then
    echo "SCALENE"
fi
