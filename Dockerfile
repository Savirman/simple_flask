# ����� ������ ������� �����
FROM python:3.8-alpine

# �������� ��� ����� �� ������� ���������� � /app ����������
COPY ./ /app
# ������������� ��� �����������
RUN apk update && pip install -r /app/requirements.txt --no-cache-dir
# ������������� ����������� (��������� ������ Distutils)
RUN pip install -e /app
# ������� ���������� ����� ���� ������
EXPOSE 8080
# ������ ������ ���������� ��� ������ ����������
CMD web_server

# � �������� ������������ distutils ����� ������ ������� ��� ���������
#CMD python /app/src/app.py