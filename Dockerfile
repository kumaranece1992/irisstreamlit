FROM python:3.6

WORKDIR /streamlit

COPY requirements.txt ./
COPY iris-ml-app.py ./

RUN pip install -r requirements.txt

EXPOSE 8501

ENTRYPOINT ["streamlit", "run"]

CMD ["/streamlit/iris-ml-app.py"]