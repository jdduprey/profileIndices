FROM python:3.11-slim

COPY ./ /tmp/profileIndices

RUN pip install /tmp/profileIndices