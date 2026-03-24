{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "645c642e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-03-24T14:18:27.313935Z",
     "iopub.status.busy": "2026-03-24T14:18:27.311434Z",
     "iopub.status.idle": "2026-03-24T14:18:27.326667Z",
     "shell.execute_reply": "2026-03-24T14:18:27.324811Z"
    },
    "papermill": {
     "duration": 0.002747,
     "end_time": "2026-03-24T14:21:53.910451",
     "exception": false,
     "start_time": "2026-03-24T14:21:53.907704",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "R Markdown Skabelon"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "54fbd3bc",
   "metadata": {
    "_cell_guid": "b1076dfc-b9ad-4769-8c92-a6c4dae69d19",
    "_uuid": "8f2839f25d086af736a60e9eeb907d3b93b6e0e5",
    "execution": {
     "iopub.execute_input": "2026-03-24T14:21:53.918485Z",
     "iopub.status.busy": "2026-03-24T14:21:53.916224Z",
     "iopub.status.idle": "2026-03-24T14:21:58.524628Z",
     "shell.execute_reply": "2026-03-24T14:21:58.522767Z"
    },
    "papermill": {
     "duration": 4.614624,
     "end_time": "2026-03-24T14:21:58.526731",
     "exception": false,
     "start_time": "2026-03-24T14:21:53.912107",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching core tidyverse packages\u001b[22m ──────────────────────── tidyverse 2.0.0 ──\n",
      "\u001b[32m✔\u001b[39m \u001b[34mdplyr    \u001b[39m 1.1.4     \u001b[32m✔\u001b[39m \u001b[34mreadr    \u001b[39m 2.1.5\n",
      "\u001b[32m✔\u001b[39m \u001b[34mforcats  \u001b[39m 1.0.0     \u001b[32m✔\u001b[39m \u001b[34mstringr  \u001b[39m 1.5.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2  \u001b[39m 3.5.1     \u001b[32m✔\u001b[39m \u001b[34mtibble   \u001b[39m 3.2.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mlubridate\u001b[39m 1.9.4     \u001b[32m✔\u001b[39m \u001b[34mtidyr    \u001b[39m 1.3.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mpurrr    \u001b[39m 1.0.2     \n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\u001b[36mℹ\u001b[39m Use the conflicted package (\u001b[3m\u001b[34m<http://conflicted.r-lib.org/>\u001b[39m\u001b[23m) to force all conflicts to become errors\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching packages\u001b[22m ────────────────────────────────────── tidymodels 1.2.0 ──\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[32m✔\u001b[39m \u001b[34mbroom       \u001b[39m 1.0.7     \u001b[32m✔\u001b[39m \u001b[34mrsample     \u001b[39m 1.2.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mdials       \u001b[39m 1.3.0     \u001b[32m✔\u001b[39m \u001b[34mtune        \u001b[39m 1.2.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34minfer       \u001b[39m 1.0.7     \u001b[32m✔\u001b[39m \u001b[34mworkflows   \u001b[39m 1.1.4\n",
      "\u001b[32m✔\u001b[39m \u001b[34mmodeldata   \u001b[39m 1.4.0     \u001b[32m✔\u001b[39m \u001b[34mworkflowsets\u001b[39m 1.1.0\n",
      "\u001b[32m✔\u001b[39m \u001b[34mparsnip     \u001b[39m 1.2.1     \u001b[32m✔\u001b[39m \u001b[34myardstick   \u001b[39m 1.3.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mrecipes     \u001b[39m 1.1.0     \n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mConflicts\u001b[22m ───────────────────────────────────────── tidymodels_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mscales\u001b[39m::\u001b[32mdiscard()\u001b[39m masks \u001b[34mpurrr\u001b[39m::discard()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m   masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mrecipes\u001b[39m::\u001b[32mfixed()\u001b[39m  masks \u001b[34mstringr\u001b[39m::fixed()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m      masks \u001b[34mstats\u001b[39m::lag()\n",
      "\u001b[31m✖\u001b[39m \u001b[34myardstick\u001b[39m::\u001b[32mspec()\u001b[39m masks \u001b[34mreadr\u001b[39m::spec()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mrecipes\u001b[39m::\u001b[32mstep()\u001b[39m   masks \u001b[34mstats\u001b[39m::step()\n",
      "\u001b[34m•\u001b[39m Learn how to get started at \u001b[32mhttps://www.tidymodels.org/start/\u001b[39m\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Attaching package: ‘xgboost’\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "The following object is masked from ‘package:dplyr’:\n",
      "\n",
      "    slice\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Attaching package: ‘vip’\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "The following object is masked from ‘package:utils’:\n",
      "\n",
      "    vi\n",
      "\n",
      "\n"
     ]
    }
   ],
   "source": [
    "# Load essential libraries\n",
    "library(tidyverse)   # Data manipulation & visualization\n",
    "library(tidymodels)  # The ML framework for R\n",
    "library(xgboost)     # State-of-the-art Gradient Boosting\n",
    "library(vip)         # For Variable Importance Plots\n",
    "library(skimr)       # Quick data summary"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6db6197f",
   "metadata": {
    "papermill": {
     "duration": 0.001708,
     "end_time": "2026-03-24T14:21:58.530480",
     "exception": false,
     "start_time": "2026-03-24T14:21:58.528772",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Data"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "2feac32d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-03-24T14:21:58.563106Z",
     "iopub.status.busy": "2026-03-24T14:21:58.536642Z",
     "iopub.status.idle": "2026-03-24T14:21:58.576159Z",
     "shell.execute_reply": "2026-03-24T14:21:58.574425Z"
    },
    "papermill": {
     "duration": 0.045888,
     "end_time": "2026-03-24T14:21:58.578052",
     "exception": false,
     "start_time": "2026-03-24T14:21:58.532164",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# Indlæs data\n",
    "#train_raw <- read_csv(\"train.csv\")\n",
    "#test_raw <- read_csv(\"test.csv\")\n",
    "\n",
    "# Hurtigt overblik\n",
    "#skim(train_raw)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8e59b07a",
   "metadata": {
    "papermill": {
     "duration": 0.001701,
     "end_time": "2026-03-24T14:21:58.581673",
     "exception": false,
     "start_time": "2026-03-24T14:21:58.579972",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Distribution"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "92222e6f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-03-24T14:21:58.588937Z",
     "iopub.status.busy": "2026-03-24T14:21:58.587111Z",
     "iopub.status.idle": "2026-03-24T14:21:58.602785Z",
     "shell.execute_reply": "2026-03-24T14:21:58.600981Z"
    },
    "papermill": {
     "duration": 0.021368,
     "end_time": "2026-03-24T14:21:58.604689",
     "exception": false,
     "start_time": "2026-03-24T14:21:58.583321",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# Tjek Target distribution (Ubalance?)\n",
    "#train_raw %>%\n",
    "#  count(target) %>%\n",
    "#  mutate(prop = n/sum(n))\n",
    "\n",
    "# Korrelationsmatrix for numeriske features\n",
    "#train_raw %>%\n",
    "#  select(where(is.numeric)) %>%\n",
    "#  cor(use = \"pairwise.complete.obs\") %>%\n",
    "#  corrplot::corrplot(method = \"circle\", type = \"upper\")"
   ]
  }
 ],
 "metadata": {
  "kaggle": {
   "accelerator": "none",
   "dataSources": [],
   "dockerImageVersionId": 31330,
   "isGpuEnabled": false,
   "isInternetEnabled": true,
   "language": "r",
   "sourceType": "notebook"
  },
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.4.0"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 8.638114,
   "end_time": "2026-03-24T14:21:58.730190",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2026-03-24T14:21:50.092076",
   "version": "2.6.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
