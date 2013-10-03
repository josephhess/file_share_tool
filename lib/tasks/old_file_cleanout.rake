task :cleanout => :environment do
  files = Document.old_doc_getter
  files.each do |file|
    file.remove_item!
    file.save
  end
end