from time import sleep
from celery import Celery

app = Celery("app")


if __name__ == "__main__":
    while True:
        task = app.send_task("do_something")
        print(f"Task sent: {task}")
        sleep(1)
