- dashboard: bing_campaign_metrics_cost_per_impression
  title: Bing Campaign Metrics - Cost Per Impression
  extends: bing_ads_base
  elements:
  - title: Cost Per Impressions To Date
    name: Cost Per Impressions To Date
    model: marketing_analytics
    explore: bing_ad_group_date_fact
    type: looker_line
    fields:
    - fact.total_conversions
    - fact.date_date
    - fact.average_cost_per_conversion
    - fact.average_cost_per_click
    - fact.average_conversion_rate
    - fact.average_click_rate
    - fact.average_cost_per_impression
    fill_fields:
    - fact.date_date
    sorts:
    - fact.date_date desc
    limit: 500
    column_limit: 50
    stacking: ''
    colors:
    - "#7869df"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors: {}
    series_labels:
      fact.cumulative_spend: This Period
      last_fact.cumulative_spend: Prior Period
    series_types: {}
    limit_displayed_rows: false
    hidden_series:
    - fact.average_cost_per_conversion
    - fact.average_cost_per_click
    - fact.average_conversion_rate
    - fact.average_click_rate
    - fact.total_conversions
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: fact.total_conversions
        name: Conversions
        axisId: fact.total_conversions
        __FILE: 5f71074d49e24011ceee3a8ee7cf1e94204e168ec2ae952a99799d53b6dd2d4636e6db93/bi_campaign_metrics_conversions.dashboard.lookml
        __LINE_NUM: 363
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: 5f71074d49e24011ceee3a8ee7cf1e94204e168ec2ae952a99799d53b6dd2d4636e6db93/bi_campaign_metrics_conversions.dashboard.lookml
      __LINE_NUM: 360
    - label:
      orientation: right
      series:
      - id: fact.average_cost_per_conversion
        name: Cost per Conversion
        axisId: fact.average_cost_per_conversion
        __FILE: 5f71074d49e24011ceee3a8ee7cf1e94204e168ec2ae952a99799d53b6dd2d4636e6db93/bi_campaign_metrics_conversions.dashboard.lookml
        __LINE_NUM: 379
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: 5f71074d49e24011ceee3a8ee7cf1e94204e168ec2ae952a99799d53b6dd2d4636e6db93/bi_campaign_metrics_conversions.dashboard.lookml
      __LINE_NUM: 376
    - label:
      orientation: right
      series:
      - id: fact.average_cost_per_click
        name: Cost per Click
        axisId: fact.average_cost_per_click
        __FILE: 5f71074d49e24011ceee3a8ee7cf1e94204e168ec2ae952a99799d53b6dd2d4636e6db93/bi_campaign_metrics_conversions.dashboard.lookml
        __LINE_NUM: 395
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: 5f71074d49e24011ceee3a8ee7cf1e94204e168ec2ae952a99799d53b6dd2d4636e6db93/bi_campaign_metrics_conversions.dashboard.lookml
      __LINE_NUM: 392
    - label:
      orientation: right
      series:
      - id: fact.average_conversion_rate
        name: Conversion Rate
        axisId: fact.average_conversion_rate
        __FILE: 5f71074d49e24011ceee3a8ee7cf1e94204e168ec2ae952a99799d53b6dd2d4636e6db93/bi_campaign_metrics_conversions.dashboard.lookml
        __LINE_NUM: 411
      - id: fact.average_click_rate
        name: Click Through Rate
        axisId: fact.average_click_rate
        __FILE: 5f71074d49e24011ceee3a8ee7cf1e94204e168ec2ae952a99799d53b6dd2d4636e6db93/bi_campaign_metrics_conversions.dashboard.lookml
        __LINE_NUM: 416
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: 5f71074d49e24011ceee3a8ee7cf1e94204e168ec2ae952a99799d53b6dd2d4636e6db93/bi_campaign_metrics_conversions.dashboard.lookml
      __LINE_NUM: 408
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: fact.campaign_name
      Account: fact.account_name
      Ad Group: fact.ad_group_name
    row: 0
    col: 0
    width: 14
    height: 11
  - title: Cost Per Impression By Day Of Week
    name: Cost Per Impression By Day Of Week
    model: marketing_analytics
    explore: bing_keyword_date_fact
    type: looker_bar
    fields:
    - fact.date_day_of_week
    - fact.average_cost_per_impression
    fill_fields:
    - fact.date_day_of_week
    sorts:
    - fact.average_cost_per_impression desc
    limit: 500
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: true
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: fact.average_cost_per_impression
        name: Keyword This Period CPM
        axisId: fact.average_cost_per_impression
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    query_timezone: America/Los_Angeles
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: fact.campaign_name
      Account: fact.account_name
      Ad Group: fact.ad_group_name
    row: 0
    col: 14
    width: 10
    height: 11
  - title: Cost Per Impression By Network
    name: Cost Per Impression By Network
    model: marketing_analytics
    explore: bing_ads_ad_impressions
    type: looker_bar
    fields:
    - fact.channel
    - fact.average_cost_per_impression
    sorts:
    - fact.average_cost_per_impression desc
    limit: 500
    stacking: ''
    colors:
    - "#8ac8ca"
    - "#7869df"
    - "#6e98f9"
    - "#d06180"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: fact.average_cost_per_impression
        name: Fact CPM
        axisId: fact.average_cost_per_impression
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    query_timezone: America/Los_Angeles
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: fact.campaign_name
      Account: fact.account_name
      Ad Group: fact.ad_group_name
    row: 11
    col: 0
    width: 8
    height: 6
  - title: Cost Per Impression By Device
    name: Cost Per Impression By Device
    model: marketing_analytics
    explore: bing_ads_ad_impressions
    type: looker_bar
    fields:
    - fact.device_type
    - fact.average_cost_per_impression
    sorts:
    - fact.average_cost_per_impression desc
    limit: 500
    stacking: ''
    colors:
    - "#d06180"
    - "#7869df"
    - "#6e98f9"
    - "#8ac8ca"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: fact.average_cost_per_impression
        name: CPM
        axisId: fact.average_cost_per_impression
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    query_timezone: America/Los_Angeles
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: fact.campaign_name
      Account: fact.account_name
      Ad Group: fact.ad_group_name
    row: 11
    col: 8
    width: 8
    height: 6
  - title: Cost Per Impression By Bid Strategy
    name: Cost Per Impression By Bid Strategy
    model: marketing_analytics
    explore: bing_keyword_date_fact
    type: looker_bar
    fields:
    - fact.bid_strategy_type
    - fact.average_cost_per_impression
    sorts:
    - fact.bid_strategy_type
    limit: 500
    stacking: ''
    colors:
    - "#dc9d4f"
    - "#7869df"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: true
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: fact.average_cost_per_impression
        name: Keyword This Period CPM
        axisId: fact.average_cost_per_impression
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    query_timezone: America/Los_Angeles
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: fact.campaign_name
      Account: fact.account_name
      Ad Group: fact.ad_group_name
    row: 11
    col: 16
    width: 8
    height: 6
  - title: Creative Cost Per Impression Change
    name: Creative Cost Per Impression Change
    model: marketing_analytics
    explore: bing_ad_date_fact
    type: looker_bar
    fields:
    - fact.ad_title
    - fact.ad_group_name
    - fact.campaign_name
    - last_fact.total_impressions_period_delta
    - last_fact.average_cost_per_impression
    - fact.average_cost_per_impression
    filters:
      fact.total_conversions_period_delta_abs: ">0"
    sorts:
    - last_fact.total_impressions_period_delta desc
    limit: 50
    column_limit: 50
    stacking: ''
    colors:
    - "#a6b7ff"
    - "#7869df"
    - "#ea9895"
    - "#d06180"
    - "#6e98f9"
    - "#8ac8ca"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea989"
    show_value_labels: true
    label_density: 25
    legend_position: center
    hide_legend: false
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: last_fact.total_conversions
        name: Ad Last Period
        axisId: last_fact.total_conversions
        __FILE: 5f71074d49e24011ceee3a8ee7cf1e94204e168ec2ae952a99799d53b6dd2d4636e6db93/bi_campaign_metrics_conversions.dashboard.lookml
        __LINE_NUM: 511
      - id: fact.total_conversions
        name: Ad This Period
        axisId: fact.total_conversions
        __FILE: 5f71074d49e24011ceee3a8ee7cf1e94204e168ec2ae952a99799d53b6dd2d4636e6db93/bi_campaign_metrics_conversions.dashboard.lookml
        __LINE_NUM: 514
      showLabels: true
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: 5f71074d49e24011ceee3a8ee7cf1e94204e168ec2ae952a99799d53b6dd2d4636e6db93/bi_campaign_metrics_conversions.dashboard.lookml
      __LINE_NUM: 508
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    query_timezone: America/Los_Angeles
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    - campaign.name
    - ad_group.ad_group_name
    - fact.ad_group_name
    - fact.campaign_name
    - last_fact.total_impressions_period_delta
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: fact.campaign_name
      Account: fact.account_name
      Ad Group: fact.ad_group_name
    row: 17
    col: 0
    width: 12
    height: 6
  - title: Landing Pages Cost Per Impression Change
    name: Landing Pages Cost Per Impression Change
    model: marketing_analytics
    explore: bing_keyword_date_fact
    type: looker_bar
    fields:
    - fact.ad_group_name
    - fact.campaign_name
    - fact.final_url
    - fact.total_impressions_period_delta
    - last_fact.average_cost_per_impression
    - fact.average_cost_per_impression
    filters:
      fact.total_conversions_period_delta_abs: ">0"
    limit: 50
    column_limit: 50
    stacking: ''
    colors:
    - "#a6b7ff"
    - "#7869df"
    - "#ea9895"
    - "#d06180"
    - "#6e98f9"
    - "#8ac8ca"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea989"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: last_fact.total_conversions
        name: Keyword Prior Period
        axisId: last_fact.total_conversions
        __FILE: 5f71074d49e24011ceee3a8ee7cf1e94204e168ec2ae952a99799d53b6dd2d4636e6db93/bi_campaign_metrics_conversions.dashboard.lookml
        __LINE_NUM: 618
      - id: fact.total_conversions
        name: Keyword This Period
        axisId: fact.total_conversions
        __FILE: 5f71074d49e24011ceee3a8ee7cf1e94204e168ec2ae952a99799d53b6dd2d4636e6db93/bi_campaign_metrics_conversions.dashboard.lookml
        __LINE_NUM: 621
      showLabels: true
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: 5f71074d49e24011ceee3a8ee7cf1e94204e168ec2ae952a99799d53b6dd2d4636e6db93/bi_campaign_metrics_conversions.dashboard.lookml
      __LINE_NUM: 615
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    query_timezone: America/Los_Angeles
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    - campaign.name
    - ad_group.ad_group_name
    - fact.ad_group_name
    - fact.campaign_name
    - fact.total_impressions_period_delta
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: fact.campaign_name
      Account: fact.account_name
      Ad Group: fact.ad_group_name
    row: 23
    col: 0
    width: 12
    height: 7
  - title: Ad Group Cost Per Impression Change
    name: Ad Group Cost Per Impression Change
    model: marketing_analytics
    explore: bing_ad_group_date_fact
    type: looker_bar
    fields:
    - fact.campaign_name
    - fact.ad_group_name
    - fact.total_impressions_period_delta
    - last_fact.average_cost_per_impression
    - fact.average_cost_per_impression
    filters:
      fact.total_conversions_period_delta_abs: ">0"
    sorts:
    - fact.total_conversions_period_delta_abs desc
    limit: 50
    column_limit: 50
    stacking: ''
    colors:
    - "#a6b7ff"
    - "#7869df"
    - "#ea9895"
    - "#d06180"
    - "#6e98f9"
    - "#8ac8ca"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea989"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: fact.total_conversions
        name: Ad Group This Period
        axisId: fact.total_conversions
        __FILE: 5f71074d49e24011ceee3a8ee7cf1e94204e168ec2ae952a99799d53b6dd2d4636e6db93/bi_campaign_metrics_conversions.dashboard.lookml
        __LINE_NUM: 724
      - id: last_fact.total_conversions
        name: Ad Group Last Period
        axisId: last_fact.total_conversions
        __FILE: 5f71074d49e24011ceee3a8ee7cf1e94204e168ec2ae952a99799d53b6dd2d4636e6db93/bi_campaign_metrics_conversions.dashboard.lookml
        __LINE_NUM: 727
      showLabels: true
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: 5f71074d49e24011ceee3a8ee7cf1e94204e168ec2ae952a99799d53b6dd2d4636e6db93/bi_campaign_metrics_conversions.dashboard.lookml
      __LINE_NUM: 721
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    query_timezone: America/Los_Angeles
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    - campaign.name
    - ad_group.ad_group_name
    - fact.campaign_name
    - fact.total_impressions_period_delta
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: fact.campaign_name
      Account: fact.account_name
      Ad Group: fact.ad_group_name
    row: 17
    col: 12
    width: 12
    height: 13