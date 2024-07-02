select recipe_id
           title,
       cooking_time,
       time_per_instruction
from {{ ref('combined_recipe') }}
where recipe_id is null
   or title is null
   or cooking_time <= 0
   or time_per_instruction <= 0