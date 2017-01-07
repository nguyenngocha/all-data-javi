file_out_ja = File.open "data.ja", "w"
file_out_vi = File.open "data.vi", "w"

def copy file_in_ja, file_in_vi, file_out_ja, file_out_vi
  file_in_ja.each.zip(file_in_vi.each).each do |ja, vi|
    file_out_ja.puts ja
    file_out_vi.puts vi
  end
end

ARGV.each do |a|
  file_in_ja = File.open a, "r"
  file_in_vi = File.open a.gsub("ja", "vi"), "r"
  copy file_in_ja, file_in_vi, file_out_ja, file_out_vi
end
