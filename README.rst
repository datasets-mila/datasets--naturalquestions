#################
Natural Questions
#################

`<https://ai.google.com/research/NaturalQuestions/download>`_

***********
NQ Overview
***********

Natural Questions contains 307K training examples, 8K examples for development,
and a further 8K examples for testing.

In the paper, we demonstrate a human upper bound of 87% F1 on the long answer
selection task, and 76% on the short answer selection task.

We believe that matching human performance on this task will require
significant progress in natural language understanding; we encourage you to
help make this happen. 

************
Get the Data
************

The full dataset is 42Gb and it should be downloaded with gsutil. Instructions
are given below.

The complete NQ dataset contains the HTML of the Wikipedia pages that were
shown to annotators. Many participants will only want to use the extracted text
so we have also provided a simplified version of the training data that is only
4Gb. The development set and test set are only provided using the original full
NQ format, but we have provided `a utility for mapping from the full NQ format
to the simplified format
<https://github.com/google-research-datasets/natural-questions/blob/master/text_utils.py>`__.
If you use the simplified format, you should use this utility to simplify all
of the examples that will be passed to your submitted model at test time.

Natural Questions is released under the `Creative Commons Share-Alike 3.0
<https://creativecommons.org/licenses/by-sa/3.0/>`__ license. If you want to
explore the data format quickly, you can look at 200 example samples of the
`train set
<https://storage.cloud.google.com/natural_questions/v1.0/sample/nq-train-sample.jsonl.gz>`__
and the `dev set
<https://storage.cloud.google.com/natural_questions/v1.0/sample/nq-dev-sample.jsonl.gz>`__
with our `standalone browser
<https://github.com/google-research-datasets/natural-questions/blob/master/nq_browser.py>`__.

To download all of the data in the original format, first `install gsutil
<https://cloud.google.com/storage/docs/gsutil_install>`__.  Note that there is
an option to install gsutil as a standalone tool if you don't want to download
the Google Cloud SDK. Then run:

::

   gsutil -m cp -R gs://natural_questions/v1.0 <path to your data directory>

This will download the full 41Gb training set, the development set (1Gb), and
the samples described above.
