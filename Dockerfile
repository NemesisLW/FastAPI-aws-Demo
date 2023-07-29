FROM public.ecr.aws/lambda/python:3.10
# function code
COPY ./app ${LAMBDA_TASK_ROOT}

COPY requirements.txt .
RUN pip3 install -r requirements.txt -t "${LAMBDA_TASK_ROOT}" -U --no-cache-dir
# Set the CMD to  handler (could also be done as a parameter override outside of the Dockerfile)
CMD [ "app.handler" ]