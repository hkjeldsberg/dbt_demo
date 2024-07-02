# Project – dbt recipe combiner

This project demonstrates how to use dbt (Data Build Tool) to create a combined view of recipes and their instructions
from a PostgreSQL database. The project includes a model that calculates the cooking time per instruction for each
recipe.

## Project Structure

```

dbt_dinner/
├── models/
│ └── combined_recipes.sql
├── tests/
│ └── combined_recipes_test.sql
├── dbt_project.yml
└── profiles.yml

```

## Models

### `combined_recipes.sql`

This model combines data from the `recipes` and `instructions` tables to create a comprehensive view of each recipe and
its instructions. Additionally, it calculates the cooking time per instruction step.

## Tests

### `combined_recipes_test.sql`

This test ensures that the `time_per_instruction` field in the `combined_recipes` model is correctly calculated and
contains no null or negative values.

## Running the Project

1. Ensure your PostgreSQL server is running and the `dinner` database is accessible.

2. Run the dbt models:

 ```bash
 dbt run
 ```

3. Run the dbt tests:

 ```bash
 dbt test
 ```

