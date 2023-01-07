require 'yaml'

OLD_SITE_DIR = '../www.cohere.coop'.freeze
Dir.glob("#{OLD_SITE_DIR}/_storytime-with-managers-episodes/*.md") do |filename|
  puts filename

  (yaml_str, content) = File.read(filename).split("---\n").reject(&:empty?)

  meta = YAML.safe_load(yaml_str)
  meta['author'] = 'Jennifer Tu'
  meta['tags'] = ['Podcast']
  meta['image'] = "/images/podcast/#{meta.delete('photo')}"

  if meta['transcript']
    (_, transcript) = File.read("#{OLD_SITE_DIR}/storytime-with-managers-transcripts/#{meta['transcript']}.md").split("---\n").reject(&:empty?)
  end

  File.open("_posts/#{File.basename(filename).gsub('.md', '')}.md", 'w') do |file|
    file.write(meta.to_yaml)
    file.write("---\n\n")
    file.write(content)
    file.write("\n\n")
    file.write(meta['embed'])
    file.write("\n\n## Transcript\n\n")
    file.write(transcript) if transcript
  end
end
