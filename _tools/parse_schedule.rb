# Make a sheet like this an export to CSV: https://docs.google.com/spreadsheets/d/1H1UIBcO5vk_YbvM78UQ1YvgW9DduLmw5itC-sNPtTC0/edit?gid=0#gid=0
# ruby _tools/parse_schedule.rb _tools/schedule_2025.csv > _speakers.json
# erb _speakers.erb > 2025-speakers.md

require 'csv'
require 'json'

OPTIONAL_FIELDS = {
  'name' => 'speaker_name',
  'bio' => 'bio',
  'abstract' => 'abstract',
  'youtube_link' => 'youtube_link',
  'slides_link' => 'slides_link',
}

out = {
  'days' => {}
}

current_date = nil

CSV.foreach(ARGV[0], headers: true) do |row|
  if row['date'].nil? || row['date'].empty?
    next
  end

  out['days'][row['date']] ||= []

  entry = {
    'time_label' => row['time'],
    'event_label' => row['title'],
  }

  OPTIONAL_FIELDS.each_pair do |data_name, out_name|
    if row[data_name] && !row[data_name].empty?
      entry[out_name] = row[data_name]
    end
  end

  if entry['speaker_name']
    entry['event_link_href'] = entry['speaker_name'].gsub(/[^a-z0-9_.-]/i, '').downcase
  end

  out['days'][row['date']] << entry
#         "event_link_href": "glitchwitch",
end

puts JSON.pretty_generate(out)
