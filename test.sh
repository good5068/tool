#!/bin/bash
if [ (command -v firefox>/dev/null 2>&1) && ($? -eq 0) ];then
echo aa
elif [ command -v firefox>/dev/null 2>&1 ];then
echo cc
fi
