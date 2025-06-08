FROM python:3.10-slim

# הגדרת משתנה סביבה כדי לוודא ש-Python ירשום Log לקונסול
ENV PYTHONUNBUFFERED=1

# הגדרת תיקיית העבודה
WORKDIR /app

# העתקת כל הקבצים
COPY . /app

# התקנת התלויות מתוך requirements.txt שבתוך תיקיית entryTracker
RUN pip install --no-cache-dir -r entryTracker/requirements.txt

# פתיחת פורט 5000
EXPOSE 5000

# הרצת האפליקציה מתוך תיקיית entryTracker
CMD ["python", "entryTracker/app.py"]
