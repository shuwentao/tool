#!/bin/bash
kill -9  $(ps -ef | grep shu.*app_encoder | awk '{print $2}')
