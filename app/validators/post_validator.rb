# class PostValidator < ActiveModel::Validator
    
#     def validate(record)
#         if !!record.title
#             unless record.title.include?("Won't Believe") || record.title.include?("Secret") || record.title.include?("Guess") || (record.title.include?("Top") && record.title.split(" ").collect {|word| word.to_i}.collect {|int| int > 0}.include?(true))
#                 record.errors[:post] << "Not Clickbait"
#             end
#         end
#     end
# end