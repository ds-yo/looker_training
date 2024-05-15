view: pdt_test2 {
  derived_table: {
    create_process: {
      sql_step:
        create or replace table ${SQL_TABLE_NAME}
        as
          with
          t1_cte as (
            select
              *
              , concat(
                character_name
                , saga_or_movie
                , db_series
                , power_level
                , updated_at
              ) as pk_field
            from
              "DRAGON_BALL_FOR_PDT"
          )
          , t2_cte as (
            select
              *
              , concat(
                character_name
                , saga_or_movie
                , db_series
                , power_level
                , updated_at
              ) as pk_field
            from
              "DRAGON_BALL_FOR_PDT"
          )
          , join_cte as (
            select
              t1.*
            from
              t1_cte as t1
              left outer join t2_cte as t2
                on t1.pk_field = t2.pk_field
          )
          , recursive_cte as (
            select
                *
                , 1 as recursive_num
            from
                join_cte
            union all
            select
                t1.* exclude(recursive_num)
                , recursive_num + 1
            from
                recursive_cte as t1
                left outer join join_cte as t2
                 on t1.pk_field = t2.pk_field
            where
              recursive_num <= 6
          )
          select
            *
          from
            recursive_cte
          order by
            1, 2, 3, 4, 5, 6
          ;;
    }
    publish_as_db_view: yes
    sql_trigger_value: select 1;;
  }


  #############
  # dimension #
  #############

  dimension: pk_field {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}."PK_FIELD" ;;
  }
}
