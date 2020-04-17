
;; tool-bar-mode 即为一个 Minor Mode
;; (tool-bar-mode -1)

;; 关闭文件滑动控件

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(scroll-bar-mode -1)

;; 显示行号
(global-linum-mode 1)
;; 高亮当前行
(global-hl-line-mode 1)


;; 括号匹配
(show-paren-mode 1)


;; 更改光标的样式（不能生效，解决方案见第二集）
(setq cursor-type 'bar)

;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)

;; 关闭缩进 (第二天中被去除)
;; (electric-indent-mode -1)

;; 更改显示字体大小 16pt
;; http://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
(set-face-attribute 'default nil :height 160)

;; 快速打开配置文件
(defun open-init-file()
    (interactive)
      (find-file "~/.emacs.d/init.el"))

;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
;;(global-set-key (kbd "<f2>") 'open-init-file)

(setq initial-major-mode 'text-mode)

;; 开启全局 Company 补全
(add-hook 'after-init-hook 'global-company-mode)

;; No delay in showing suggestions.
(setq company-idle-delay 0)

;; Show suggestions after entering one character.
(setq company-minimum-prefix-length 1)

(setq company-selection-wrap-around t)

;; Use tab key to cycle through suggestions.
;; ('tng' means 'tab and go')
;; (company-tng-configure-default)