# Student Submission and Grading Guide

## Introduction

This guide is designed to standardize the submission and grading process for various technical courses offered at the DSI certificates. Our aim is to streamline the process using GitHub, ensuring consistency across courses such as Python, Git, Shell scripting, Statistics, Sampling, Algorithms, and more. Submissions will primarily be in Python, SQL, or Markdown formats, with rare exceptions based on specific course requirements. 

## Setting Up

1. **Forking the Course Repository:** At the beginning of the course, participants will have to fork the official module repository to their GitHub account. This is their personal workspace for the duration of the course.
    - Visit the designated UofT-DSI module repo.
    - Click "fork" on the page:
        ![](./images/fork_repo.png)
    - Please do **NOT** change the repo name presented in the "Create a new fork" page, simply click "Create Fork".
        ![](./images/create_new_fork.png)
    - After a successful forking, your repo should be created at an address resembling `https://github.com/<YOUR GITHUB ID>/<COURSE MODULE>`

## Submitting Assignments

2. **Creating a Branch for the Assignment:** For each assignment, you must create a new branch named after the assignment, e.g., `assignment-1`. Note that we will be using dashes between words, and all lowercase. This branch should stem from your fork of the main course repository.
    ![](./images/branche_page.png)
    ![](./images/create_branch_button.png)
    ![](./images/create_branch.png)

3. **Completing Your Assignment:** Work on your assignment within this branch. Ensure your submission includes all required files, following the formats specified.

4. **Creating a Pull Request (PR):**
    - Upon completing your assignment, create a pull request from your assignment branch (`assignment-1`) to **your fork's main branch**. (Please make sure the pull request is **NOT** to the source/upstream repository's main branch)
        ![](./images/create_pr.png)
        ![](./images/pr_NOT_DO_creation.png)
        ![](./images/pr_branch_to_main.png)
    - **PR Description:** Your pull request must include a detailed description of what you aimed to accomplish, the approach taken, and whether it has been tested. Incomplete descriptions may result in deductions. Please read [Guidelines for Pull Request Descriptions](#guidelines-for-pull-request-descriptions).
    - **Public Repository:** Ensure that your repository is public and accessible to others. If your repository is private, technical facilitators and learning support staff will not be able to access it and therefore will not be able to grade your submissions. To do this, go to your repository and check for the "public" badge next to the repository name.
        ![](./images/public_repo.png)
    - **PR Link:** Please visit your pull request on another browser or in your browsers private mode to ensure that it is accessible by everyone. [Example Pull Request Submission Link](#example-pr-submission-link).

## Guidelines for Pull Request Descriptions

Your pull request needs to touch on the following topics:
- Summarize your implemented solution and any challenges faced.
- Detail the testing methods applied.
- Highlight any specific areas you'd like feedback on.

Please use the following template for your pull request descriptions:

    TITLE: UofT-DSI | <Module Name> - Assignment <assignment number>
   
    ## What changes are you trying to make? (e.g. Adding or removing code, refactoring existing code, adding reports)

    ## What did you learn from the changes you have made?

    ## Was there another approach you were thinking about making? If so, what approach(es) were you thinking of?

    ## Were there any challenges? If so, what issue(s) did you face? How did you overcome it?

    ## How were these changes tested?

    ## A reference to a related issue in your repository (if applicable)

    ## @mentions of the person or team responsible for reviewing proposed changes (At least 2 people)
    - 

    ## Checklist
    - [ ] I can confirm that my changes are working as intended

- For the most up to date template, please reference [pull_request_template.md](https://github.com/UofT-DSI/.github/blob/main/pull_request_template.md?plain=1)

## Example Pull Request Submission Link
A pull request link is typical compromised of the following structure: https://github.com/<github_username>/<repo_name>/pull/<pr_id>

For example:
    ```
    https://github.com/johnsmith/python/pull/2
    ```

## Handling Accidental Merges

Sometimes, you might accidentally merge your assignment branch into your fork's main branch before it's time to do so. If this happens, it's important to know how to reverse the changes to maintain the integrity of your main branch. Follow these steps to undo an accidental merge:

### Steps to Revert a Merge

1. **Identify the Merge Commit:**
    - Go to your repository's pull requests.
        ![](./images/pr_tab.png)
    - Click on "closed" to view a list of closed pull requests.
        ![](./images/closed_prs_button.png)
    - Find the pull request where the merge occurred.
        ![](./images/closed_prs.png)
    - Click on the pull request to open its details.
2. **Revert the Merge Commit:**
    - Click on the "Revert" button. This will create a new commit that undoes the changes made by the merge.
        ![](./images/pr_revert_button.png)
    - Follow the prompts to create a new pull request for the revert commit. Ensure this pull request is against your fork's main branch.
        ![](./images/pr_revert.png)

3. **Review and Merge the Revert Pull Request:**
    - Carefully review the changes in the revert pull request to ensure it only undoes the merge.
    - Once confirmed, merge the revert pull request into your main branch. This will restore your main branch to its state before the accidental merge.

4. **Clean Up Your Branches:**
    - If necessary, recreate the assignment branch from the main branch to continue working on your assignment.
    - Ensure any new changes are committed to the correct branch.

### Need Further Help?

If you encounter difficulties or need clarification on the steps, don't hesitate to reach out to the technical facilitators or learning support staff. They are here to help you navigate any issues you might encounter during your coursework.