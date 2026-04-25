import requests
import sqlite3

conn = sqlite3.connect(":memory:")
cursor = conn.cursor()

cursor.execute("CREATE TABLE posts (title TEXT, score INTEGER, user TEXT)")

ids = requests.get("https://hacker-news.firebaseio.com/v0/topstories.json").json()

for i in ids[:20]:
    data = requests.get(f"https://hacker-news.firebaseio.com/v0/item/{i}.json").json()
    if data and "title" in data:
        cursor.execute("INSERT INTO posts VALUES (?, ?, ?)",
                       (data["title"], data.get("score", 0), data.get("by", "unknown")))

conn.commit()

cursor.execute("SELECT AVG(score) FROM posts")
print("Average Score:", cursor.fetchone()[0])

cursor.execute("""
SELECT user, COUNT(*), AVG(score)
FROM posts
GROUP BY user
ORDER BY AVG(score) DESC
LIMIT 3
""")
print("\nTop Users:")
for row in cursor.fetchall():
    print(row)

cursor.execute("""
SELECT title, score
FROM posts
WHERE score > 100
ORDER BY score DESC
""")
print("\nBest Posts (score > 100):")
for row in cursor.fetchall():
    print(row)

conn.close()