;;; bootstrap `use-package'
(require 'package)

(setq package-archives
      (append package-archives
              (add-to-list 'package-archives
                           '("melpa" . "https://melpa.org/packages/"))))

(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

(provide 'package)
