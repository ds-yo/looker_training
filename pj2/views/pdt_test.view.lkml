view: pdt_test {
  derived_table: {
    create_process: {
      sql_step:
        create or replace table ${SQL_TABLE_NAME}
        as
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
      ;;
    }
    publish_as_db_view: yes
    datagroup_trigger: pdt_test_datagroup
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
