" Vim syntax file
" Language:         Generic log files
" Maintainer:       Mikhail Usachev
" Latest Revision:  2016-08-17

if exists("b:current_syntax")
  finish
endif

syn match log_error 	'\c\<\(FATAL\|ERROR\|ERRORS\|FAIL\|FAILED\|FAILURE\)\>'
syn match log_warning 	'\c\<\(WARN\|WARNING\|DELETE\|DELETING\|DELETED\|RETRY\|RETRYING\)\>'
syn match log_info 		'\c\<\(INFO\)\>'
syn region log_string 	start=/'/ end=/'/ end=/$/ skip=/\\./
syn region log_string 	start=/"/ end=/"/ skip=/\\./
syn match log_number 	'0x[0-9a-fA-F]*\|\[<[0-9a-f]\+>\]\|\<\d[0-9a-fA-F]*'

syn match   log_date '\(Jan\|Feb\|Mar\|Apr\|May\|Jun\|Jul\|Aug\|Sep\|Oct\|Nov\|Dec\) [ 0-9]\d *'
syn match   log_date '\d\{4}-\d\d-\d\d'

syn match   log_time '\d\d:\d\d:\d\d\s*'
syn match   log_time '\d\d:\d\d:\d\d\.\d\{1,5}'
syn match   log_time '\c\d\d:\d\d:\d\d\(\.\d\+\)\=\([+-]\d\d:\d\d\|Z\)'

syn match   messages_ip          '\d\+\.\d\+\.\d\+\.\d\+'
syn match   messages_url         '\w\+://\S\+'

syn match	semantic_symbol '[\[\]\{\}:.=\-<>,()]'

hi def link log_string 		String
hi def link log_number 		Number
hi def link log_date 		Constant
hi def link log_time 		Type
hi def link log_error 		ErrorMsg
hi def link log_warning 	WarnMsg
hi def link log_info		Title
hi def link messages_ip     Constant
hi def link messages_url    Underlined
hi def link semantic_symbol	Type

let b:current_syntax = "log"

