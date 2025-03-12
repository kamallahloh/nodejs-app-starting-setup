FROM python

WORKDIR /app

# copy from . the surrounding files to /app to the container image 
COPY . /app
# COPY . .  where the second . is the working directory

# RUN pip install flask not needed as we are using the python image which already has flask installed

CMD ["python", "bmi.py"]

# docker build -t pythonapp:latest .

# docker run -d # to detach the container from the terminal
# docker run -it <id> # for interactive session to provide input to the container


# re-run the container with the other name
# docker run -it --name pythoncont --rm pythonapp:latest  # --rm is to remove the container when it is stopped

# docker stop pythoncont # here stopped but not removed
# docker start -i -a pythoncont # to start the container again in attached and interactive mode