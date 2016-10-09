id = awk{'print $1'}
english = awk{'print $2'}
math = awk{'print $3'}
science = awk{'print $4'}

avg = (english + math + science) / 3
if [[ avg >= 60 ]] && [[ avg < 80 ]]; then
    grade = 'B'
else if [[ avg >= 80 ]] && [[ avg <= 100 ]]; then
    grade = 'A'
else if [[ avg >= 50 ]] && [[ avg < 60 ]]; then
    grade = 'C'
else
    grade = 'FAIL'
fi

echo id english math science grade
