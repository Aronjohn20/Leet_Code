select user_id ,
    round(avg(case 
                when activity_type='free_trial' 
                then activity_duration end ),2
    ) as trial_avg_duration,
    round(avg(case 
                when activity_type='paid'
                then activity_duration end ),2
    ) as paid_avg_duration 
from useractivity
group by user_id having paid_avg_duration is not null AND trial_avg_duration IS NOT NULL
order by user_id asc