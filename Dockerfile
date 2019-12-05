FROM pypy:2.7-7.1.0

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENTRYPOINT ["pypy", "./schedule_viewer.py"]
