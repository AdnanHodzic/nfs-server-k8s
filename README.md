# nfs-server-k8s: NFS server container image for Kubernetes

"nfs-server-k8s" container image was created in aim to have NFS capabilities on (Google) Kubernetes Enginer cluster without having to use services like [Filestore](https://cloud.google.com/filestore). It was created for purposes of wp-k8s (WordPress on Kubernetes) project: [GitHub](https://github.com/AdnanHodzic/wp-k8s), [blog post](https://foolcontrol.org/?p=3754).

It does by installing necessary tools to have NFS server/volume running on a container and by exporting `/exports` via NFS.

This image is based on `gcr.io/google_containers/volume-nfs:0.8` container image ([nfs-data source code](https://github.com/kubernetes/examples/tree/master/staging/volumes/nfs/nfs-data)). At this point only difference is that `nfs-server-k8s` will contain all the latest system updates of CentOS 7 system `volume-nfs:0.8` is based on.

Image is available on [DockerHub](https://hub.docker.com/repository/docker/adnanhodzic/nfs-server-k8s) and can be pulled by running:
`docker pull docker.io/adnanhodzic/nfs-server-k8s`
