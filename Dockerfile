FROM python:3.6-slim

COPY . /app

RUN apt-get update
RUN pip3 install --upgrade pip
RUN pip3 install -r /app/requirements.txt

CMD ["python", main.py" ,"--stock_symbol=SP500", "--train", "--input_size=1", "--lstm_size=128", "--max_epoch=50"]