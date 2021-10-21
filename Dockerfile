# select base image
FROM apache/airflow:2.1.4-python3.6

# copy local connector into container
COPY requirement.txt /tmp/

WORKDIR /tmp

# run pip install
RUN pip install --requirement requirement.txt
# CMD ["pip install -r /tmp/requirement.txt"]