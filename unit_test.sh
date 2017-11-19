#!/bin/bash
output=$(curl "http://localhost:9090")

if [[ $output == *"Found"* ]]; then
  echo "OMG SUCCESS!!!1!"
else
  echo "Oh Noes, didn't get back the expected result x_x"
fi

