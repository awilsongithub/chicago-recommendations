# COPY THIS WHOLE FILE TEXT INTO PSQL

psql

CREATE DATABASE chicago_recommendations;
\c chicago_recommendations

CREATE TABLE places (id SERIAL PRIMARY KEY, contributor VARCHAR(255), place VARCHAR(255), notes VARCHAR(255), type_of_place VARCHAR(255) );
