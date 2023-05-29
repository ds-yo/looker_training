- dashboard: testdashboard
  title: testdashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: BCvQtXxg9sWlvte1y3PkzU
  elements:
  - title: testdashboard
    name: testdashboard
    model: osumi_pj
    explore: distribution_centers
    type: looker_column
    fields: [distribution_centers.count, distribution_centers.name]
    filters: {}
    sorts: [distribution_centers.count desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Longitude: distribution_centers.longitude
    row: 0
    col: 0
    width: 8
    height: 7
  - title: hoge
    name: hoge
    model: osumi_pj
    explore: events
    type: table
    fields: [events.city, events.count]
    sorts: [events.city]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 7
    col: 0
    width: 7
    height: 5
  filters:
  - name: Longitude
    title: Longitude
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
    model: osumi_pj
    explore: distribution_centers
    listens_to_filters: []
    field: distribution_centers.longitude
