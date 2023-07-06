FROM python:3.6
WORKDIR /codes/prompt_genius
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . .
ENV FLASK_APP app
ENV FLASK_DEBUG true
CMD flask run --port 9000