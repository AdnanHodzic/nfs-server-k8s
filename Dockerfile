FROM gcr.io/google_containers/volume-nfs:0.8
RUN yum update -y && yum clean all
