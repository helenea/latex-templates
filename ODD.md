# Description of an ABM following the ODD protocol from Grimm *et al.*

## Overview
### Purpose
*Question, problem or hypothesis at the origin of the model.*

### Entities, state variables and scales
*What kinds of entities are in the model? By what state variables, or attributes, are these entities characterized? What are the temporal and spatial resolutions and extents of the model?*

*Agents, collectives, spatial units, environment.*

### Process overview and scheduling
*Who (i.e., what entity) does what, and in what order? When are state variables updated? How is time modeled, as discrete steps or as a continuum over which both continuous processes and discrete events can occur? Except for very simple schedules, one should use pseudo-code to describe the schedule in every detail, so that the model can be re-implemented from this code. Ideally, the pseudo-code corresponds fully to the actual code used in the program implementing the ABM.*


## Design concepts
### Basic principles
*Which general concepts, theories, hypotheses, or modeling approaches are underlying the model’s design? Explain the relationship between these basic principles, the complexity expanded in this model, and the purpose of the study.*

### Emergence
*What key results or outputs of the model are modeled as emerging from the adaptive traits, or behaviors, of individuals? In other words, what model results are expected to vary in complex and perhaps unpredictable ways when particular characteristics of individuals or their environment change? Are there other results that are more tightly imposed by model rules and hence less dependent on what individuals do, and hence ‘built in’ rather than emergent results?*

### Adaptation
*What adaptive traits do the individuals have? What rules do
they have for making decisions or changing behavior in response to changes in themselves or their environment? Do these traits explicitly seek to increase some measure of individual success regarding its objectives (e.g., “move to the cell providing fastest growth rate”, where growth is assumed to be an indicator of success ; see the next concept)? Or do they instead simply cause individuals to reproduce observed behaviors (e.g., “go uphill 70% of the time”) that are implicitly assumed to indirectly convey success or fitness?*

### Objectives
*If adaptive traits explicitly act to increase some measure of the individual’s success at meeting some objective, what exactly is that objective and how is it measured? When individuals make decisions by ranking alternatives, what criteria do they use?*

### Learning
*Many individuals or agents (but also organizations and institutions) change their adaptive traits over time as a consequence of their experience? If so, how?*

### Prediction
*Prediction is fundamental to successful decision-making; if an
agent’s adaptive traits or learning procedures are based on estimating future consequences of decisions, how do agents predict the future conditions (either environmental or internal) they will experience? If appropriate, what internal models are agents assumed to use to estimate future conditions or consequences of their decisions? What tacit or hidden predictions are implied in these internal model assumptions?*

### Sensing
*What internal and environmental state variables are individuals assumed to sense and consider in their decisions? What state variables of which other individuals and entities can an individual perceive; for example, signals that another individual may intentionally or unintentionally send?*

### Interaction
*What kinds of interactions among agents are assumed? Are
there direct interactions in which individuals encounter and affect others, or are interactions indirect, e.g., via competition for a mediating resource? If the interactions involve communication, how are such communications represented?*

### Stochasticity
*What processes are modeled by assuming they are random or
partly random? Is stochasticity used, for example, to reproduce variability in processes for which it is unimportant to model the actual causes of the variability? Is it used to cause model events or behaviors to occur with a specified frequency?*

### Collectives
*Do the individuals form or belong to aggregations that affect,
and are affected by, the individuals? How are collectives represented? Is a particular collective an emergent property of the individuals, such as a flock of birds that assembles as a result of individual behaviors, or is the collective simply a definition by the modeler, such as the set of individuals with certain properties, defined as a separate kind of entity with its own state variables and traits?*

### Observation
*What data are collected from the ABM for testing, understanding, and analyzing it, and how and when are they collected? Are all output data freely used, or are only certain data sampled and used, to imitate what can be observed in an empirical study?*


## Details
### Initialization
*What is the initial state of the model world, i.e., at time t=0 of a simulation run? In detail, how many entities of what type are there initially, and what are the exact values of their state variables (or how were they set stochastically)? Is initialization always the same, or is it allowed to vary among simulations? Are the initial values chosen arbitrarily or based on data? References to those data should be provided.*

### Input data
*Does the model use input from external sources such as data files or other models to represent processes that change over time?*

### Submodels
*What, in detail, are the submodels that represent the processes listed in ‘Process overview and scheduling’? What are the model parameters, their dimensions, and reference values? How were submodels designed or chosen, and how were they parame- terized and then tested?*