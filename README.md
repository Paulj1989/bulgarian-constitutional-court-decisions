# Analyzing Legal Texts from the Bulgarian Constitutional Court

Using natural language processing and deep learning methods for text and sentence classification tasks, applied to legal texts from the Bulgarian Constitutional Court.

## Contents

- [Requirements](#requirements)
- [Current Results](#current-results)
- [Project Plans](#project-plans)
  - [Status](#status)
  - [TODOs](#todos)
- [Resources](#resources)
  - [Legal Corpora](#legal-corpora)
  - [Research](#research)
  - [Other Resources](#other-resources)
- [License](#license)
- [Contact](#contact)

## Requirements

The Bulgarian Constitutional Court (BCC) project is managed in a virtual environment, using pipenv. All packages and their dependencies can be found in Pipfile and Pipfile.lock. To create a pipenv environment and install all the packages needed to run the codes in the repository, run the following in a terminal:

````bash
# install pipenv
pip install pipenv

# navigate to the repository directory
cd ~/path/to/bulgarian-constitutional-court-decisions

# install virtual environment and dependencies
pipenv install
````

All models that are currently in development are contained in the models folder. Text data and annotated documents can be found in the models/data folder, as well as a guide on converting documents from pdf to text, and a jupyter notebook tutorial on how to do this in python.

## Current Results

The baseline models so far achieve the following performance on the training and validation data:
</br>
| Baseline Model                       | Test Accuracy         |
| ------------------------------------ | --------------------- |
| Logistic Regression                  |         80%           |
| Naive Bayes                          |         84%           |
| Support Vector Machines </br> (SVM)  |         81%           |

</br>
The deep learning models so far achieve the following performance on the training and validation data:
</br></br>

| Deep Learning Model                                 | Test Accuracy         | Validation Accuracy       |
| --------------------------------------------------- | --------------------- | ------------------------- |
| Convolutional Neural </br> Network (CNN)            |         89%           |           80%             |
| Long Short-Term Memory </br> Neural Network (LSTM)  |         89%           |           80%             |

## Project Plans

### Status

This project is still in progress. Current models are in the early stages of development.

### TODOs

Current TODOs for future development:

- [ ] Tune baseline model hyperparameters to improve performance
- [ ] Improve deep learning models
- [x] Visualize model performance
- [x] Further model testing
- [ ] Add more annotated data to improve training process

## Resources

If you are interested in using NLP or deep learning methods for analyzing legal texts, the following resources may be useful.

### Legal Corpora

- [Corpus of US Supreme Court Opinions](https://www.english-corpora.org/scotus/)
- [Case Law Access Project](https://case.law/tools/)
- [UCI Legal Case Reports](https://archive.ics.uci.edu/ml/datasets/Legal+Case+Reports)

### Research

- [McCarty (2007) - Deep Semantic Interpretations of Legal Texts](https://www.cs.rutgers.edu/~mccarty/research/icail07-acm.pdf)

### Other Resources

- [spaCy Course](https://github.com/ines/spacy-course)
- [Research Lab @ The Incorporated Council of Law Reporting (ICLR&D)](https://research.iclr.co.uk/)

## License

The data for this project is licensed under the [Creative Commons Attribution 3.0 Unported license](https://creativecommons.org/licenses/by/3.0/), and the code used to train the models is licensed under the [MIT license](LICENSE.md).

## Contact

If you have any questions or comments, feel free to contact [me](https://github.com/paulj1989) by [email](mailto:paul@paulrjohnson.net), on [Twitter](https://twitter.com/paul_johnson89), or in the [repository discussions](https://github.com/Paulj1989/bulgarian-constitutional-court-decisions/discussions).
