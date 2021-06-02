PAIRS = {
    environment: ['sun exposure', 'sleep'],
    health: ['workout', 'running']
}

PAIRS.each do |group_name, titles|
    titles.each do |title|
        Category.create!(
            group: group_name.to_s,
            title: title
        )
    end
end

# The above should create all possible combinations