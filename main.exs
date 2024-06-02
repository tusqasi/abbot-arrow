if length(System.argv()) != 2 do
  exit("Incorrect arguments passed")
end

[round, last_choice] = System.argv()
if round > 200  do
  exit("Too many rounds")
end

folder_name = "tusqasi_output"
File.mkdir_p!(folder_name)

File.touch(Path.join(folder_name, round))
File.write(Path.join(folder_name, round), last_choice)

IO.puts(last_choice)
