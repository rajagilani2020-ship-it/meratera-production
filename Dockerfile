FROM gmag11/metatrader5_vnc:latest

USER root

# Remove the broken WineHQ source file so apt-get update succeeds
RUN rm -f /etc/apt/sources.list.d/winehq*.list /etc/apt/sources.list.d/wine*.list

# Update packages and install Python
RUN apt-get update && apt-get install -y python3 python3-pip

WORKDIR /app
COPY requirements.txt /app/
RUN pip3 install --no-cache-dir -r requirements.txt

COPY main.py /app/
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh

CMD ["/app/start.sh"]
