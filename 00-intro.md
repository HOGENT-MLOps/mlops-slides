---
title: Introduction
subtitle: "Machine Learning Operations<br/>HOGENT applied computer science"
author: Thomas Aelbrecht
date: 2023-2024
---

# Introduction

## Why MLOps?

![MLOps only became popular fairly recently](./assets/00-intro/mlops-google-trends.png)

::: notes

MLOps only became popular fairly recently, as you can see in the Google Trends graph.

:::

## Why MLOps?

![ML code is only a fraction of the code in an ML system](./assets/00-intro/hidden-tech-dept-ml.png)

::: notes

One of the biggest challenges in ML is to get the model into production. D. Sculley et al. (2015)
found that the code for the ML code is only a fraction of the code in an ML system. The rest of
the code is for data collection, data cleaning, data preparation, data storage, model training,
model evaluation, model deployment, model monitoring, and model retraining.

Many companies struggle with deploying and monitoring ML models in production. This is why MLOps
is becoming a critical component of successful ML projects.

:::

## Why MLOps?

- **New** field, daily evolution
- ML model design is *relatively* easy
- ML model in production is *much* harder, time-consuming

## References

- Google Trends: [MLOps](https://trends.google.com/trends/explore?date=all&q=MLOps)
- Sculley, D., Holt, G., Golovin, D., Davydov, E., Phillips, T., Ebner, D., ... & Dennison, D. (2015).
[Hidden technical debt in machine learning systems](https://proceedings.neurips.cc/paper_files/paper/2015/hash/86df7dcfd896fcaf2674f757a2463eba-Abstract.html).
Advances in neural information processing systems, 28.

# Machine Learning Operations

## Machine Learning Operations

> Standardization and streamlining of machine learning life cycle management:
> development, testing, deployment, and monitoring.

<br/>

- Aka **MLOps**
- Don't confuse with ModelOps or AIOps

::: notes

- ModelOps:
  - is a more general term than MLOps
  - deploy any kind of model (e.g. a rule-based model)
  - includes MLOps
- AIOps:
  - solve operational issues with AI
  - e.g. predict network problems so that a DevOps team can act faster or even before the problem occurs

:::

## Three levels of change

![](./assets/00-intro/three-levels-of-change.jpg)

::: notes

Source: <https://ml-ops.org/content/motivation>

:::

## ML Engineering

![](assets/00-intro/ml-engineering.jpg)

TODO: nog verder aanvullen met intro MLOps

::: notes

This is the complete machine learning life cycle. It includes the entire process from data
collection to model deployment.

In this course, we focus on the last part: model deployment. In the image above, this consists of
model packaging, model versioning and the blue parts.

:::

# Study Guide

## Study Guide

See Chamilo course for detailed information.

## Course within the curriculum

TODO: afbeeldingen curriculum of evt. een klein diagram maken

## Learning goals and competences

- **CI/CD principles** in the context of ML
- Bring a ML model into **production** and **monitor** it using CI/CD principles
- Describes the challenges and possible solutions for running a ML model on devices with
limited computing power
- Run a ML model on a device with **limited computing power**, e.g. using Tensorflow Lite

<br/>
<br/>
<center>**Remark: this is a new course**</center>

## Course contents

- CI/CD pipelines
- Configuration management
- Docker, Kubernetes, Kubeflow
- TensorFlow Extended, Lite, Serving...
- Monitoring and feedback loop
- Model governance
- Metadata and artifact store

## Learning materials

- Start with the overview in the Chamilo course
- Github: [lecture slides](https://hogent-mlops.github.io/mlops-slides/),
[demo environment](TODO), [lab assignments](TODO)
- Online manuals of software used
- Video recordings of classroom instruction (Dutch)
- (Books - see study guide on Chamilo)

## Software needed

```console
PS> choco install git
PS> choco install vscode
PS> choco install virtualbox
PS> choco install vagrant
```

(Mac, Linux: see study guide on Chamilo)

## Software (continuation)

- VSCode: install recommended plugins (see study guide)
- VirtualBox: Extension Pack!
- Git client: also install Git Bash!

## Teaching methods

- Classroom instruction, demonstration
- Lab assignments
- Guest lecture?

## Tutoring

- Individual guidance for lab assignments
- Ask questions *during class sessions*
- Outside class: *general Teams channel*
- Only for personal questions: *e-mail/Teams chat*

## Semester schedule

TODO: write schedule here

## Assessment

- **Portfolio**:
  - Github repo with source code and reports
- **Demonstrations**:
  - During the semester (at least 3x)
  - End result (exam period or W13)

## Resit

Personal assignment, no support

- finish lab assignments
- extra assignment

## Questions?
