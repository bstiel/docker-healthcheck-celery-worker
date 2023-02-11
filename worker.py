from celery import Celery


app = Celery("app")


@app.task(name="do_something")
def do_something():
    print("hello")