---
title: "4. The ML Workflow"
subtitle: "Machine Learning Operations<br/>HOGENT applied computer science"
author: Thomas Aelbrecht
date: 2022-2023
---

# The ML Workflow

## Learning goals

TODO: add learning goals

# Intro

## Remember the ML lifecycle?

![<small><em>Source: <https://docs.aws.amazon.com/wellarchitected/latest/machine-learning-lens/well-architected-machine-learning-lifecycle.html></em></small>](./assets/00-intro/ml-lifecycle-aws.png)

## End-to-end ML Workflow

![<small><em>Source: <https://ml-ops.org/content/end-to-end-ml-workflow></em></small>](./assets/04-ml-workflow/ml-engineering.jpg)

## It's complex

- Data versioning
- Labelling data
- Using notebooks
- Automating training
- Automating evaluation
- Storing models
- Serving models (i.e. deployment)
- Monitoring and logging

## We focus on

TODO: aanvullen als er nog extra dingen bij komen

- Using notebooks
- Automating training
- Serving models (i.e. deployment)
- Monitoring and logging

# ML pipelines

## What is a pipeline?

- A sequence of steps
- Executed in a specific order
- Each step
  - has a specific purpose
  - has specific inputs and outputs
  - can be executed in isolation

## ML pipelines

- [Kubeflow](https://www.kubeflow.org/)
- [TFX](https://www.tensorflow.org/tfx/)
- [AWS SageMaker](https://aws.amazon.com/sagemaker/)
- [Azure Machine Learning](https://azure.microsoft.com/en-us/products/machine-learning)
- [Google Vertex AI](https://cloud.google.com/vertex-ai)

## Kubeflow

<https://www.kubeflow.org/>

- Open source
- Runs on Kubernetes (likely managed)
- Make ML workflows portable and scalable
- Supports Jupyter notebooks, TensorFlow, PyTorch, etc.

## Kubeflow overview

![<small><em>Source: <https://www.kubeflow.org/docs/started/architecture/></em></small>](./assets/04-ml-workflow/kubeflow-overflow.svg)

## TFX

<https://www.tensorflow.org/tfx/>

- End-to-end platform for deploying production ML pipelines
- Manages the entire ML workflow
- Create pipelines via Python API
- Tends to be complex and buggy
- Runs on-premise or in the cloud

## TFX components

![<small><em>Source: <https://www.tensorflow.org/tfx/guide></em></small>](./assets/04-ml-workflow/tfx_components.png)

## Cloud ML services

- AWS SageMaker, Azure Machine Learning, Google Vertex AI
- Fully managed service
- Build, train, and deploy ML models
- Supports Jupyter notebooks, TensorFlow, PyTorch, etc.
- Vendor lock-in

# Get started with the lab assignment!

## Setup

TODO: aanvullen

## Kubeflow lab assignment

TODO: aanvullen
