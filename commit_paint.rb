=begin
mockup =
[ 5,12,  ,26, 2],
[ 6,13,  ,27, 3],
[  ,  ,  ,  ,  ],
[ 8,  ,22,  , 5],
[ 9,  ,23,  , 6],
[  ,  ,24,  ,  ],
[  ,  ,  ,  ,  ]
=end


dates = [
  ['01','05'],
  ['01','06'],
  ['01','08'],
  ['01','09'],
  ['01','12'],
  ['01','13'],
  ['01','22'],
  ['01','23'],
  ['01','24'],
  ['01','26'],
  ['01','27'],
  ['02','02'],
  ['02','03'],
  ['02','05'],
  ['02','06']
]


dates.each do |month, day|
  (0..19).each do |minutes|
    File.open('./guinea_pig.txt', 'w') do |file|
      file.write("2014-#{month}-#{day}T12:#{minutes}:00\n")
    end
    %x[git add . && git commit --date='2014-#{month}-#{day}T12:#{minutes}:00' -m '2014-#{month}-#{day}T12:#{minutes}']
  end
end
