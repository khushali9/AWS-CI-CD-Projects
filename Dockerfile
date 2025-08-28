FROM python:3.8-slim
#create working directory
WORKDIR /app 
#copy our whole project to working directory
COPY . /app 

#update all the project 
RUN apt update -y && apt install awscli -y 

#run req file 
RUN pip install -r requirements.txt
#to run file app.py
CMD ["python", "app.py"]