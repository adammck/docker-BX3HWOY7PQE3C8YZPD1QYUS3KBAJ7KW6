FROM centos:6.6

# Apply security updates
RUN yum -y update

# Install St*** build deps
RUN yum -y groupinstall "Development Tools"
RUN yum -y install python-devel mysql-devel tar

# Install Python tools
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | python
RUN pip install --upgrade pip
RUN pip install virtualenv

# Clean up
RUN yum clean all
