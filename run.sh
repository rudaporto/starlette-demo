#!/bin/sh
# exec gunicorn -w 4 -k uvicorn.workers.UvicornWorker --bind=0.0.0.0:5000 --log-level warning app:app
exec uvicorn app:app --host 0.0.0.0 --port 5000 --loop uvloop --workers 4 --no-access-log
