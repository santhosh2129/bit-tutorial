set str "lenghtofthisstring"
set len 0
set list1 [ split $str "" ]
foreach value $list1 {
incr len
}
puts $len
