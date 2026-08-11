import os
import random
from flask import Flask, render_template_string
import redis

app = Flask(__name__)

redis_host = os.getenv("REDIS_HOST", "redis")
redis_port = int(os.getenv("REDIS_PORT", 6379))

db = redis.Redis(host=redis_host, port=redis_port, decode_responses=True)

quotes = [
    "Containers made this app portable.",
    "Redis remembers what containers forget.",
    "NGINX routes the traffic, Flask handles the logic.",
    "Docker Compose connects the services together.",
    "Small projects build real engineering understanding."
]

base_style = """
<style>
body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: linear-gradient(135deg, #1f2937, #f97316);
    min-height: 100vh;
    color: #111827;
}
.card {
    max-width: 1100px;
    margin: 80px auto;
    background: white;
    padding: 60px;
    border-radius: 24px;
    text-align: center;
    box-shadow: 0 20px 60px rgba(0,0,0,0.25);
}
.logo {
    width: 170px;
    margin-bottom: 25px;
}
h1 {
    font-size: 52px;
    margin-bottom: 15px;
}
p {
    font-size: 22px;
    line-height: 1.6;
}
.btn {
    display: inline-block;
    margin: 12px;
    padding: 14px 26px;
    border-radius: 10px;
    text-decoration: none;
    font-weight: bold;
}
.primary {
    background: #f97316;
    color: white;
}
.dark {
    background: #111827;
    color: white;
}
.grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 18px;
    margin-top: 35px;
}
.box {
    background: #f9fafb;
    border: 1px solid #e5e7eb;
    padding: 24px;
    border-radius: 16px;
}
</style>
"""

logo = '<img class="logo" src="/static/images/trackerio-logo.png" alt=" Logo">'

@app.route("/")
def home():
    return render_template_string(f"""
    <!DOCTYPE html>
    <html>
    <head>
        <title>Tracker.io</title>
        {base_style}
    </head>
    <body>
        <div class="card">
            {logo}
            <h1>Welcome to Tracker.io</h1>
            <p>A Dockerised Flask application using NGINX, Redis, and Docker Compose.</p>
            <p>Track visits, test persistent storage, and demonstrate service communication across containers.</p>
            <a class="btn primary" href="/count">View Visit Count</a>
            <a class="btn dark" href="/about">About Project</a>
        </div>
    </body>
    </html>
    """)

@app.route("/count")
def count():
    visits = db.incr("visits")
    quote = random.choice(quotes)

    return render_template_string(f"""
    <!DOCTYPE html>
    <html>
    <head>
        <title>Visit Count</title>
        {base_style}
    </head>
    <body>
        <div class="card">
            {logo}
            <h1>Visit Count</h1>
            <p>This page has been visited <strong>{visits}</strong> times.</p>
            <p><em>"{quote}"</em></p>
            <a class="btn primary" href="/count">Refresh Count</a>
            <a class="btn dark" href="/">Home</a>
            <a class="btn dark" href="/about">About</a>
        </div>
    </body>
    </html>
    """)

@app.route("/about")
def about():
    return render_template_string(f"""
    <!DOCTYPE html>
    <html>
    <head>
        <title>About Tracker.io</title>
        {base_style}
    </head>
    <body>
        <div class="card">
            {logo}
            <h1>About This Project</h1>
            <p>This project demonstrates how multiple containers work together using Docker Compose.</p>

            <div class="grid">
                <div class="box">
                    <h2>NGINX</h2>
                    <p>Acts as the reverse proxy and public entry point.</p>
                </div>
                <div class="box">
                    <h2>Flask</h2>
                    <p>Handles routing, pages, and application logic.</p>
                </div>
                <div class="box">
                    <h2>Redis</h2>
                    <p>Stores the visit count using persistent storage.</p>
                </div>
            </div>

            <a class="btn dark" href="/">Home</a>
        </div>
    </body>
    </html>
    """)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5002)
