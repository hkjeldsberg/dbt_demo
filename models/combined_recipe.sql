with recipe_data as (select r.id as recipe_id,
                            r.title,
                            r.description,
                            r.cooking_time,
                            i.id as instruction_id,
                            i.step_number,
                            i.instruction
                     from recipes as r
                              left join
                          instructions i on r.id = i.recipe_id),

     instructions_count as (select recipe_id,
                                   count(*) as instruction_count
                            from recipe_data
                            group by recipe_id)

select rd.recipe_id,
       rd.title,
       rd.description,
       rd.cooking_time,
       rd.instruction_id,
       rd.step_number,
       rd.instruction,
       rd.cooking_time::float / ic.instruction_count as time_per_instruction
from recipe_data rd
         join instructions_count ic on rd.recipe_id = ic.recipe_id

