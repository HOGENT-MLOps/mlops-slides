---
title: "5. Deployment and beyond"
subtitle: "Machine Learning Operations<br/>HOGENT applied computer science"
author: "Thomas Aelbrecht & Martijn Saelens"
date: 2022-2023
---

# Deployment and beyond

## Learning goals

TODO: add learning goals

# Intro

## Introduction

- Development &ne; production
  - Dev: scikit-learn, Jupyter...
  - Prod: NodeJS, TFX, Kubeflow...
- Ideally: same code, different configuration
  - Sometimes same vendor, same cloud, same tools
  - Sometimes not possible

---

> Think about your tools even before you start coding!
> A good toolset can save you a lot of time and effort.

## Considerations (1/3)

- Tooling
  - impact on model
  - effort to put in in prod
  - output format of ML model (PMML, ONNX...)
  - ...
- Performance
  - Python vs C++
  - must run on a low end device vs high end server

## Considerations (2/3)

- Data access
  - bundled with model (= frozen data)
  - database, cloud storage... (= dynamic data)
  - prod env should have access, correct drivers...

## Considerations (3/3)

- Training vs inference
  - training: most expensive step in ML lifecycle
  - inference: most of time spent here in prod
  - think about how to optimize both
  - do not over engineer the model

::: notes

<b><u>Example for data access</u></b>

A model evaluating apartment prices may use the average market price in a zip code area.
However, the user or the system requesting the scoring will probably not provide this
average and would most likely provide simply the zip code, meaning a lookup is necessary
to fetch the value of the average.

:::

## Model risk evaluation

- Model mimics reality, but is imperfect
- Malfunctions or malicious attacks can cause harm

## Questions to ask before deploy

- What if the model acts in the worst imaginable way?
- What if a user manages to extract the training data or the internal logic of the model?
- What are the financial, business, legal, safety, and reputational risks?

## Causes for trouble

- Bugs (your code, runtime framework...)
- Low quality training data
- High difference prod vs training data
- Misuse of model
- Adversarial attacks
- Bias, unethical use
- ...

::: notes

Adversarial attacks:

- malicious attacks on the data which may seem okay to a human eye but causes misclassification
  in a machine learning pipeline. These attacks are often made in the form of specially designed
  "noise", which can elicit misclassification.
- See <https://www.analyticsvidhya.com/blog/2022/09/machine-learning-adversarial-attacks-and-defense>

:::

## Quality assurance

- Does not only occur at the end of the pipeline
- Occurs at every step of the pipeline
- Can be automated with e.g. [Kubeflow](https://www.kubeflow.org/), [TFX](https://www.tensorflow.org/tfx/) (= pipelines)

# Deployment

## Deployment approaches

- Real-time
- Batch

## Real-time serving

- Model deployed as a service
- Called via API (like in Web Services)
- One or a small number of predictions
- Can be deployed on-prem or in cloud
- E.g. ad targeting, recommendation systems

## Batch serving

- Whole dataset is scored
- Executed on a schedule (daily, weekly...)
- E.g. fraud detection, churn prediction

## Deployment options

- On-premise
- Cloud
  - VM, container, serverless, edge...

## Serverless

- No need to manage servers
- Pay per use
- E.g. AWS SageMaker, Azure Machine Learning, Google Vertex AI...

## Edge deployments

- Deployed on devices (e.g. mobile phones, IoT devices...)
- Can be used offline
- Limited resources: small models (e.g. TensorFlow Lite)
- E.g. image recognition, speech recognition

## Automated deployment?

- Could be part of CI/CD pipeline
- But often manual

## Keep in mind

- Deployment is not the end of the ML lifecycle
- Model needs to be monitored
  - model drift
  - data drift
  - concept drift
  - ...

# Get started with the lab assignment!

## Setup

TODO: aanvullen

## Azure ML assignment

TODO: aanvullen
