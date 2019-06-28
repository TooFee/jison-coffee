#!/usr/bin/env bash
./index.coffee > parser.js
node parser.js ../testcalc
