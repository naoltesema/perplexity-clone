from fastapi import FastAPI  # type: ignore

app = FastAPI()

@app.get("/")
def hello_world():
    return "hello world"