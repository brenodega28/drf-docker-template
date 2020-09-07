FROM python:3.8

ENV WORKSPACE=/usr/src/app
RUN mkdir -p $WORKSPACE
WORKDIR $WORKSPACE

COPY . $WORKSPACE

RUN pip install --upgrade pip

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

RUN chmod +x ./cmd.sh
CMD ["./cmd.sh"]