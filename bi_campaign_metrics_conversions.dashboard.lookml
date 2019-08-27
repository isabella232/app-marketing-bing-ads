- dashboard: bing_campaign_metrics_conversions
  title: Bing Ads - Conversions
  extends: bing_ads_base
  elements:
  - title: Conversions To Date
    name: Conversions To Date
    model: marketing_analytics
    explore: bing_ad_group_date_fact
    type: looker_line
    fields: [fact.total_conversions, fact.date_date, fact.average_cost_per_conversion,
      fact.average_cost_per_click, fact.average_conversion_rate, fact.average_click_rate]
    fill_fields: [fact.date_date]
    sorts: [fact.date_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{id: fact.total_conversions,
            name: Conversions, axisId: fact.total_conversions, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-5ae89c4e1167dd3b38d35f15e39863679157eb95/bi_campaign_metrics_conversions.dashboard.lookml,
            __LINE_NUM: 363}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-5ae89c4e1167dd3b38d35f15e39863679157eb95/bi_campaign_metrics_conversions.dashboard.lookml,
        __LINE_NUM: 360}, {label: !!null '', orientation: right, series: [{id: fact.average_cost_per_conversion,
            name: Cost per Conversion, axisId: fact.average_cost_per_conversion, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-5ae89c4e1167dd3b38d35f15e39863679157eb95/bi_campaign_metrics_conversions.dashboard.lookml,
            __LINE_NUM: 379}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-5ae89c4e1167dd3b38d35f15e39863679157eb95/bi_campaign_metrics_conversions.dashboard.lookml,
        __LINE_NUM: 376}, {label: !!null '', orientation: right, series: [{id: fact.average_cost_per_click,
            name: Cost per Click, axisId: fact.average_cost_per_click, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-5ae89c4e1167dd3b38d35f15e39863679157eb95/bi_campaign_metrics_conversions.dashboard.lookml,
            __LINE_NUM: 395}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-5ae89c4e1167dd3b38d35f15e39863679157eb95/bi_campaign_metrics_conversions.dashboard.lookml,
        __LINE_NUM: 392}, {label: !!null '', orientation: right, series: [{id: fact.average_conversion_rate,
            name: Conversion Rate, axisId: fact.average_conversion_rate, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-5ae89c4e1167dd3b38d35f15e39863679157eb95/bi_campaign_metrics_conversions.dashboard.lookml,
            __LINE_NUM: 411}, {id: fact.average_click_rate, name: Click Through Rate,
            axisId: fact.average_click_rate, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-5ae89c4e1167dd3b38d35f15e39863679157eb95/bi_campaign_metrics_conversions.dashboard.lookml,
            __LINE_NUM: 416}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-5ae89c4e1167dd3b38d35f15e39863679157eb95/bi_campaign_metrics_conversions.dashboard.lookml,
        __LINE_NUM: 408}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: [fact.average_cost_per_conversion, fact.average_cost_per_click,
      fact.average_conversion_rate, fact.average_click_rate]
    legend_position: center
    colors: ["#7869df", "#6e98f9", "#8ac8ca", "#d06180", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_types: {}
    point_style: none
    series_colors:
      fact.total_conversions: "#9174F0"
    series_labels:
      fact.cumulative_spend: This Period
      last_fact.cumulative_spend: Prior Period
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
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
      Campaign: campaign.campaign_name
      Account: account.account_name
      Ad Group: ad_group.ad_group_name
    row: 0
    col: 0
    width: 14
    height: 11
  - title: Conversions By Day Of Week
    name: Conversions By Day Of Week
    model: marketing_analytics
    explore: bing_keyword_date_fact
    type: looker_bar
    fields: [fact.total_conversions, fact.date_day_of_week]
    fill_fields: [fact.date_day_of_week]
    sorts: [fact.total_conversions desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    y_axes: [{label: '', orientation: bottom, series: [{id: fact.total_conversions,
            name: Keyword This Period Cost, axisId: fact.total_conversions, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-5ae89c4e1167dd3b38d35f15e39863679157eb95/bi_campaign_metrics_conversions.dashboard.lookml,
            __LINE_NUM: 33}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-5ae89c4e1167dd3b38d35f15e39863679157eb95/bi_campaign_metrics_conversions.dashboard.lookml,
        __LINE_NUM: 30}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      fact.total_conversions: "#9174F0"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: campaign.campaign_name
      Account: account.account_name
      Ad Group: ad_group.ad_group_name
    row: 0
    col: 14
    width: 10
    height: 11
  - title: Conversions By Network
    name: Conversions By Network
    model: marketing_analytics
    explore: bing_ads_ad_impressions
    type: looker_bar
    fields: [fact.channel, fact.total_conversions]
    sorts: [fact.total_conversions desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    y_axes: [{label: '', orientation: bottom, series: [{id: fact.total_conversions,
            name: Fact Cost, axisId: fact.total_conversions, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-5ae89c4e1167dd3b38d35f15e39863679157eb95/bi_campaign_metrics_conversions.dashboard.lookml,
            __LINE_NUM: 112}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-5ae89c4e1167dd3b38d35f15e39863679157eb95/bi_campaign_metrics_conversions.dashboard.lookml,
        __LINE_NUM: 109}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    colors: ["#8ac8ca", "#7869df", "#6e98f9", "#d06180", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_types: {}
    point_style: none
    series_colors:
      fact.total_conversions: "#9174F0"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
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
  - title: Conversions By Device
    name: Conversions By Device
    model: marketing_analytics
    explore: bing_ad_date_fact
    type: looker_bar
    fields: [fact.device_type, fact.total_conversions]
    sorts: [fact.total_conversions desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{id: fact.total_conversions,
            name: Cost, axisId: fact.total_conversions, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-5ae89c4e1167dd3b38d35f15e39863679157eb95/bi_campaign_metrics_conversions.dashboard.lookml,
            __LINE_NUM: 270}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-5ae89c4e1167dd3b38d35f15e39863679157eb95/bi_campaign_metrics_conversions.dashboard.lookml,
        __LINE_NUM: 267}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    colors: ["#d06180", "#7869df", "#6e98f9", "#8ac8ca", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_types: {}
    point_style: none
    series_colors:
      fact.total_conversions: "#9174F0"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: campaign.campaign_name
      Account: account.account_name
      Ad Group: ad_group.ad_group_name
    row: 11
    col: 8
    width: 8
    height: 6
  - title: Conversions By Bid Strategy
    name: Conversions By Bid Strategy
    model: marketing_analytics
    explore: bing_keyword_date_fact
    type: looker_bar
    fields: [keyword.bid_strategy_type, fact.total_conversions]
    sorts: [fact.total_conversions desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    y_axes: [{label: '', orientation: bottom, series: [{id: fact.total_conversions,
            name: Keyword This Period Cost, axisId: fact.total_conversions, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-5ae89c4e1167dd3b38d35f15e39863679157eb95/bi_campaign_metrics_conversions.dashboard.lookml,
            __LINE_NUM: 191}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-5ae89c4e1167dd3b38d35f15e39863679157eb95/bi_campaign_metrics_conversions.dashboard.lookml,
        __LINE_NUM: 188}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    colors: ["#dc9d4f", "#7869df", "#6e98f9", "#8ac8ca", "#d06180", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_types: {}
    point_style: none
    series_colors:
      fact.total_conversions: "#9174F0"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: campaign.campaign_name
      Account: account.account_name
      Ad Group: ad_group.ad_group_name
    row: 11
    col: 16
    width: 8
    height: 6
  - title: Creative Conversions Change
    name: Creative Conversions Change
    model: marketing_analytics
    explore: bing_ad_date_fact
    type: looker_bar
    fields: [ad.title, ad_group.ad_group_name, campaign.campaign_name, fact.total_cost,
      last_fact.total_conversions, fact.total_conversions, last_fact.total_cost, fact.total_conversions_period_delta]
    filters:
      fact.total_conversions_period_delta_abs: ">0"
    sorts: [fact.total_conversions_period_delta_abs desc]
    limit: 50
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{id: last_fact.total_conversions,
            name: Ad Last Period, axisId: last_fact.total_conversions, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-5ae89c4e1167dd3b38d35f15e39863679157eb95/bi_campaign_metrics_conversions.dashboard.lookml,
            __LINE_NUM: 511}, {id: fact.total_conversions, name: Ad This Period, axisId: fact.total_conversions,
            __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-5ae89c4e1167dd3b38d35f15e39863679157eb95/bi_campaign_metrics_conversions.dashboard.lookml,
            __LINE_NUM: 514}], showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-5ae89c4e1167dd3b38d35f15e39863679157eb95/bi_campaign_metrics_conversions.dashboard.lookml,
        __LINE_NUM: 508}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    hide_legend: false
    legend_position: center
    colors: ["#a6b7ff", "#7869df", "#ea9895", "#d06180", "#6e98f9", "#8ac8ca", "#dc9d4f",
      "#4bb86a", "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea989"]
    series_types: {}
    point_style: none
    series_colors:
      fact.total_conversions: "#9174F0"
      last_fact.total_conversions: "#d2b8ff"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [campaign.name, ad_group.ad_group_name, fact.total_cost, last_fact.total_cost,
      fact.total_conversions_period_delta, ad_group.ad_group_name, campaign.campaign_name]
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: campaign.campaign_name
      Account: account.account_name
      Ad Group: ad_group.ad_group_name
    row: 17
    col: 0
    width: 12
    height: 6
  - title: Landing Pages Conversions Change
    name: Landing Pages Conversions Change
    model: marketing_analytics
    explore: bing_keyword_date_fact
    type: looker_bar
    fields: [ad_group.ad_group_name, campaign.campaign_name, fact.total_cost, last_fact.total_conversions,
      fact.total_conversions, last_fact.total_cost, fact.total_conversions_period_delta,
      keyword.final_url]
    filters:
      fact.total_conversions_period_delta_abs: ">0"
    sorts: [fact.total_conversions_period_delta_abs desc]
    limit: 50
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{id: last_fact.total_conversions,
            name: Keyword Prior Period, axisId: last_fact.total_conversions, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-5ae89c4e1167dd3b38d35f15e39863679157eb95/bi_campaign_metrics_conversions.dashboard.lookml,
            __LINE_NUM: 618}, {id: fact.total_conversions, name: Keyword This Period,
            axisId: fact.total_conversions, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-5ae89c4e1167dd3b38d35f15e39863679157eb95/bi_campaign_metrics_conversions.dashboard.lookml,
            __LINE_NUM: 621}], showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-5ae89c4e1167dd3b38d35f15e39863679157eb95/bi_campaign_metrics_conversions.dashboard.lookml,
        __LINE_NUM: 615}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    legend_position: center
    colors: ["#a6b7ff", "#7869df", "#ea9895", "#d06180", "#6e98f9", "#8ac8ca", "#dc9d4f",
      "#4bb86a", "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea989"]
    series_types: {}
    point_style: none
    series_colors:
      last_fact.total_conversions: "#d2b8ff"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [campaign.name, ad_group.ad_group_name, fact.total_cost, last_fact.total_cost,
      fact.total_conversions_period_delta, ad_group.ad_group_name, campaign.campaign_name]
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: campaign.campaign_name
      Account: account.account_name
      Ad Group: ad_group.ad_group_name
    row: 23
    col: 0
    width: 12
    height: 7
  - title: Ad Group Conversions Change
    name: Ad Group Conversions Change
    model: marketing_analytics
    explore: bing_ad_group_date_fact
    type: looker_bar
    fields: [campaign.campaign_name, ad_group.ad_group_name, fact.total_cost, fact.total_conversions,
      last_fact.total_conversions, last_fact.total_cost, fact.total_conversions_period_delta]
    filters:
      fact.total_conversions_period_delta_abs: ">0"
    sorts: [fact.total_conversions_period_delta_abs desc]
    limit: 50
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{id: fact.total_conversions,
            name: Ad Group This Period, axisId: fact.total_conversions, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-5ae89c4e1167dd3b38d35f15e39863679157eb95/bi_campaign_metrics_conversions.dashboard.lookml,
            __LINE_NUM: 724}, {id: last_fact.total_conversions, name: Ad Group Last
              Period, axisId: last_fact.total_conversions, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-5ae89c4e1167dd3b38d35f15e39863679157eb95/bi_campaign_metrics_conversions.dashboard.lookml,
            __LINE_NUM: 727}], showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-5ae89c4e1167dd3b38d35f15e39863679157eb95/bi_campaign_metrics_conversions.dashboard.lookml,
        __LINE_NUM: 721}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    legend_position: center
    colors: ["#a6b7ff", "#7869df", "#ea9895", "#d06180", "#6e98f9", "#8ac8ca", "#dc9d4f",
      "#4bb86a", "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea989"]
    series_types: {}
    point_style: none
    series_colors:
      fact.total_conversions: "#d2b8ff"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [campaign.name, fact.total_cost, last_fact.total_cost, fact.total_conversions_period_delta,
      campaign.campaign_name]
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: campaign.campaign_name
      Account: account.account_name
      Ad Group: ad_group.ad_group_name
    row: 17
    col: 12
    width: 12
    height: 13
