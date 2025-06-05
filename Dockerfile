# Image בסיס עם Python 3.10
FROM python:3.10-slim

# הגדרת משתנה סביבה כדי לוודא ש-Python ירשום Log לקונסול
ENV PYTHONUNBUFFERED=1

# הגדרת תיקיית העבודה
WORKDIR /app

# העתקת כל הקבצים
COPY . /app

# התקנת התלויות מתוך requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# פתיחת פורט 5000 (כפי שנאמר)
EXPOSE 5000

# הרצת האפליקציה
CMD ["python", "app.py"]

