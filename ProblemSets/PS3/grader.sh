#!/bin/sh
for i in $(seq 1 17); do
    echo "user $i"
    points=0
    j=$(printf "%03d" $i)
    cd /home/ouecon${j}
    
    # 4 -- shell script file in PS3 folder
    if ls /home/ouecon${j}/DScourseS23/ProblemSets/PS3/PS3*.sh 1> /dev/null 2>&1; then
        points=$((points + 20))
    else
        echo "sh file does not exist"
    fi
    
    # 5 -- shell script file in PS3 folder
    if ls /home/ouecon${j}/DScourseS23/ProblemSets/PS3/*_*.sql 1> /dev/null 2>&1; then
        points=$((points + 20))
    else
        echo "sql file does not exist"
    fi
    
    # 6 -- .tex file in PS2 folder
    if ls /home/ouecon${j}/DScourseS23/ProblemSets/PS3/*_*.tex 1> /dev/null 2>&1; then
        points=$((points + 5))
    else
        echo "tex file does not exist"
    fi
        
    # 7 -- .pdf file in PS2 folder
    if ls /home/ouecon${j}/DScourseS23/ProblemSets/PS3/*_*.pdf 1> /dev/null 2>&1; then
        points=$((points + 5))
    else
        echo "pdf file does not exist"
    fi

    echo "Total points: $points"
    echo " "
done

