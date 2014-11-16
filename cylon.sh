#!/bin/bash

echo "Lookout! A cylon!"
echo ""

cylons[0]=$'\x0d[-[       ]-                ]'
cylons[1]=$'\x0d[ -[       ]-               ]'
cylons[2]=$'\x0d[  -[       ]-              ]'
cylons[3]=$'\x0d[   -[       ]-             ]'
cylons[4]=$'\x0d[    -[       ]-            ]'
cylons[5]=$'\x0d[     -[       ]-           ]'
cylons[6]=$'\x0d[      -[       ]-          ]'
cylons[7]=$'\x0d[       -[       ]-         ]'
cylons[8]=$'\x0d[        -[       ]-        ]'
cylons[9]=$'\x0d[         -[       ]-       ]'
cylons[10]=$'\x0d[          -[       ]-      ]'
cylons[11]=$'\x0d[           -[       ]-     ]'
cylons[12]=$'\x0d[            -[       ]-    ]'
cylons[13]=$'\x0d[             -[       ]-   ]'
cylons[14]=$'\x0d[              -[       ]-  ]'
cylons[15]=$'\x0d[               -[       ]- ]'
cylons[16]=$'\x0d[                -[       ]-]'

MIN=0
MAX=16
order='asc'
i=MIN
while [ true ]; do
  cylon=${cylons[$i]}
  output=$"\x0d$cylon"
  printf "$output"
  sleep 0.1 

  if [ $order == 'asc' ]; then
    i=$[$i + 1]
    if [ $i -gt $MAX ]; then
      i=$[$MAX - 1]
      order='desc'
    fi
  else
    i=$[$i - 1]
    if [ $i -lt $MIN ]; then
      i=$[$MIN + 1]
      order='asc'
    fi
  fi
done

