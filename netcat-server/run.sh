#!/bin/bash

export PATH=/home/user/swift-5.2.4-RELEASE-ubuntu20.04/usr/bin:"${PATH}"
cd /home/user/questionbot/questionbot-tasks/ && git pull
/home/user/questionbot/.build/x86_64-unknown-linux-gnu/debug/questionbot /home/user/questionbot/tasks.md
