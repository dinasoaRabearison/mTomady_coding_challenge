# Coding Challenge

We want to build an application that lets a patient who arrives at a clinic
select which treatment they want to receive. Your task is to build this
application!

You are welcome to use any technologies you like, and you can code in whichever
programming language you choose. All the technical choices are yours (ie.
language, database, framework, frontend). It's good to keep your decisions in
mind, and we may ask why you chose one technology over another.

Some of these requirements may be vague. You are welcome to make your own
assumptions or you can contact us for clarification. If you do make your own
decisions, we recommend you document them.

You can submit the application as you wish, but we ask that you include
instructions on how to run the application (and tests, if included), and to
seed the initial data.

You do not need to deploy your application; it is enough to send the code to
us. But your code should be deployment-ready :)

Your submission does not need to be perfect. If we like your submission, we'll
use discuss it during the next step. If we don't like it, we'll give you
feedback as to why, and how it could be improved.

## Treatment Selector

The Treatment Selector will be used by two people:

 * Patients - to select a treatment
 * Admins - to translate the treatments

Patients will use the TreatmentSelector when they go to a clinic. They should
see a website that provides them with a list of treatments. They will pick a
treatment from a pre-defined list, enter their name, and confirm their choice.

Admins must be able to provide translations (into French or Malagasy) of the
treatment names. Patients will see the names of the treatments in the language
that their browser is set to.

A list of treatments in two categories is provided below. Patients can see
these categories. You do not need to translate the treatment names into French
or Malagasy - that is up to the Admins :)

As the list of treatments is constantly changing, there should be some
mechanism to periodically repopulate the list of treatments (whether nightly,
or weekly, or monthly).

You can use these list of treatments broken into two categories:

 1. Diagnostics

    * angiocardiography
    * angiography
    * brain scanning
    * cholecystography
    * echocardiography
    * mammography
    * myelography
    * prenatal testing
    * ultrasound
    * urography

 2. Examinations

    * auscultation
    * autopsy
    * biopsy
    * bronchoscopy
    * cardiac catheterization
    * colposcopy
    * endoscopy
    * esophagogastroduodenoscopy
    * gynecological examination
    * laparoscopy
    * mediastinoscopy
    * nasopharyngolaryngoscopy
    * palpation
    * percussion
    * Rubin’s test

## Acceptance Critiera

You can use these acceptance criteria to help guide you in building the project:

AC1:

As an Admin
I can see the list of treatments in the system

AC2:

As an Admin
I can provide translations for each treatment into Malagasy or French

AC3:

As a User
I can see the list of all the treatments, enter my name, and select one
and the treatments are in the language that my browser is set to (English, French, or Malagasy)

AC4:

As a User
I can select a category, and then see all the treatments that belong to that category.

## Application user/admin guide

This application is in full ruby on rails and use Active records default database and models migration.
For the front-end, it's just HTML and Bootstrap

ruby bin\rails server in the app directory starts the application.
You access the user platform via http://localhost:3000 url

The main page welcome the user and tends him to treatments lists or to give his name to see his previous selections.
He can choose a treatment and confirm his selection by giving his name.
Then, he can see all the treatments he already select.
The treatment name adapt itself by browser's language if the admin already add a translation. Else, it will appear in English by default

The admin page couldn't be accessible via the user page.
You must write http://localhost:3000/admin/treatments to do so.
Then give username: clinicAdmin, and password: clinicAdmin123!. Theses are default password, feel free to add admins in your databases if you need another or update this one.
The admin page give a list of treatments and by selecting one, you can view a list of translations.
You can add another translation or update the existing one.

If you want to contact me : dinasoa.rabearison@gmail.com