# Kubernetes

## Requirements

Go through the theory sources provided below (or find your own) to achieve the following requirements:

-   You should unserstand the concept of container orchestration.
-   You should understand the basic architecture of Kubernetes, inclduing the following components:
    -   Master node/control plane
    -   Worker node
    -   etcd
    -   kubelet
    -   kube-proxy
-   You should be able to manipulate the following Kubernetes resources:
    -   Pods
    -   ReplicaSets
    -   Deployments
    -   Services
    -   Jobs
    -   CronJobs
-   You should be able to organise applications using labels and selectors.
-   You can install `minikube`, start a local Kubernetes cluster, and use the `kubectl` command to iteract with it.
-   You can explain the contents of a given Kubernetes manifest file, and you can apply it to a Kubernetes cluster.

## Theory

### Articles

TODO:

### Videos

#### Kubernetes concepts

-   Kubernetes Explained in 100 Seconds: <https://www.youtube.com/watch?v=PziYflu8cB8>
    -   Very high-level introduction to Kubernetes. It explains the basic concepts in a simple way.
    -   It should be noted that this video is not sufficient to understand Kubernetes in depth.
-   Kubernetes Essentials from Google Cloud: <https://www.youtube.com/playlist?list=PLIivdWyY5sqLmnGdKSdQIXq2sd_1bWSnx>
    -   Playlist of 9 videos that explain the basic concepts of Kubernetes and show how to use it on Google Cloud.
    -   You won't be able to use Google Cloud in this course, but the concepts are the same on any Kubernetes cluster.
-   Kubernetes Crash Course for Absolute Beginners: <https://www.youtube.com/watch?v=s_o8dwzRlu4>
    -   Same author as the next video, but this one is more focused on the basics and is shorter.
-   Complete Kubernetes Tutorial for Beginners <https://www.youtube.com/watch?v=VnvRFRk_51k&list=PLy7NrYWoggjziYQIDorlXjTvvwweTYoNC>
    -   Very detailed tutorial that explains more than just the basics.
    -   Includes a demo of `minikube` and `kubectl`.

#### Minikube

-   What is minikube?: <https://youtu.be/uo82-n1gMcI?si=ahj2c2qtrAaMjCrK>

### Manuals

-   Kubernetes documentation: <https://kubernetes.io/docs/home/>
-   Minikube documentation: <https://minikube.sigs.k8s.io/docs/>

## Online Courses

-   Learning Kubernetes, LinkedIn Learning:
    [https://www.linkedin.com/learning/learning-kubernetes/](https://www.linkedin.com/learning/learning-kubernetes/welcome?autoplay=true&u=77666441)
    -   This course is part of a series of courses on Kubernetes: [Getting Started with Kubernetes](https://www.linkedin.com/learning/paths/getting-started-with-kubernetes). It is a good starting point for beginners.
    -   Feel free to follow all courses to gain a deeper understanding of Kubernetes.

HOGENT students have free access to LinkedIn Learning via [Academic Software](http://academicsoftware.eu/).

## Books

If you want to use Kubernetes in a professional environment or gain deeper insights, these resources may be helpful:

-   Martin, P. (2021) _Kubernetes: Preparing for the CKA and CKAD Certifications._ Apress
    -   HOGENT staff and students have free access to this ebook from campus or via VPN [using this link](https://doi.org/10.1007/978-1-4842-6494-2).
-   Hightower, K. (2021) _Kubernetes The Hard Way._ Retrieved on 2022-09-10 from [https://github.com/kelseyhightower/kubernetes-the-hard-way](https://github.com/kelseyhightower/kubernetes-the-hard-way)
    -   Instructions on how to set up Kubernetes manually. Anyone using Kubernetes in production must understand the platform in detail. This guide helps with the installation and configuration of all necessary components. It is probably the best way to truly understand how Kubernetes works under the hood.
