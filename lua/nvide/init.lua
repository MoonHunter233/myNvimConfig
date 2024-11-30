if vim.g.neovide then
  vim.o.guifont = "Maple Mono:h12:b" -- text below applies for VimScript

  vim.o.linespace = 0 -- 字体行间距

  vim.g.neovide_scale_factor = 1.0

  -- 文本伽马和对比度
  vim.g.neovide_text_gamma = 0.0
  vim.g.neovide_text_contrast = 0.5

  -- padding
  vim.g.neovide_padding_top = 0
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_padding_right = 0
  vim.g.neovide_padding_left = 0

  -- 窗口透明度模糊
  vim.g.neovide_transparency = 0.95
  vim.g.neovide_window_blurred = true
  vim.g.neovide_floating_blur_amount_x = 2.0
  vim.g.neovide_floating_blur_amount_y = 2.0

  -- 浮动窗口的阴影
  vim.g.neovide_floating_shadow = false
  vim.g.neovide_floating_z_height = 10
  vim.g.neovide_light_angle_degrees = 45
  vim.g.neovide_light_radius = 5

  -- 位置动画时长
  vim.g.neovide_position_animation_length = 0.15

  -- 滚动动画时长
  vim.g.neovide_scroll_animation_length = 0.2

  -- 滚动远端行数动画
  vim.g.neovide_scroll_animation_far_lines = 5

  -- 输入时隐藏鼠标
  vim.g.neovide_hide_mouse_when_typing = true

  -- 下划线自动缩放
  -- vim.g.neovide_underline_stroke_scale = 1.0

  -- fps
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_refresh_rate_idle = 5

  -- 强制重绘
  vim.g.neovide_no_idle = true

  -- 退出时确认
  vim.g.neovide_confirm_quit = true

  -- 退出时脱离连线
  vim.g.neovide_detach_on_quit = "always_quit"

  -- 全屏
  vim.g.neovide_fullscreen = false

  -- 开启性能分析器
  vim.g.neovide_profiler = false

  -- 触控屏幕
  vim.g.neovide_touch_deadzone = 6.0
  vim.g.neovide_touch_drag_timeout = 0.17

  -- 光标
  vim.g.neovide_cursor_animation_length = 0.15 -- 动画时长
  vim.g.neovide_cursor_trail_size = 0.5 -- 轨迹大小
  vim.g.neovide_cursor_antialiasing = true -- 抗锯齿
  vim.g.neovide_cursor_animate_in_insert_mode = true -- 输入模式
  vim.g.neovide_cursor_animate_command_line = true -- 命令行
  vim.g.neovide_cursor_unfocused_outline_width = 0.125 -- 未聚焦时光标轮廓宽度
  vim.g.neovide_cursor_smooth_blink = true -- 光标平滑闪烁

  -- 粒子效果
  vim.g.neovide_cursor_vfx_mode = "ripple" -- "torpedo", "torpedo", "pixedust", "sonicboom", "ripple", "wireframe", ""
  vim.g.neovide_cursor_vfx_opacity = 200.0 -- 透明度
  vim.g.neovide_cursor_vfx_particle_lifetime = 1.2 -- 生命周期（时长？）
  vim.g.neovide_cursor_vfx_particle_density = 7.0 -- 密度
  vim.g.neovide_cursor_vfx_particle_speed = 10.0 -- 速度
  vim.g.neovide_cursor_vfx_particle_phase = 1.5 -- 相位
  vim.g.neovide_cursor_vfx_particle_curl = 1.0 -- 卷曲
end
