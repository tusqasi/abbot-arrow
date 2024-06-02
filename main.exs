if length(System.argv()) != 2 do
  exit("Incorrect arguments passed")
end

[round_n, last_choice] = System.argv()
if String.to_integer(round_n) > 200  do
  exit("Too many rounds")
end

folder_name = "tusqasi_output"
File.mkdir_p!(folder_name)

File.touch(Path.join(folder_name, round_n))
File.write(Path.join(folder_name, round_n), last_choice)

IO.puts(last_choice)
