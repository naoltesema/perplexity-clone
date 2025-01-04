from fastapi import FastAPI

app = Fastapi()

@app.get("/")
def hello_world();
    return "hello world"