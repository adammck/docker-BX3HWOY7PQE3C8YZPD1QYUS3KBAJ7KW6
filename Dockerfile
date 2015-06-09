FROM centos:6.6

# Install Python
RUN yum install -y python
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | python
RUN pip install --upgrade pip
RUN pip install virtualenv
