
class ImportService
  def initialize(fileUrl:, model: Stop)
    @fileUrl = fileUrl
    @model = model
  end

  def import
    return false unless valid?

    import!

    true
  end

  private

  attr_reader :fileUrl, :model

  def valid?
    gtfsFile? && source.respond_to?(property)
  end

  def import!
    model.create(records)
  end

  def records
    @records ||= source.send(property).map do |r|
      r.as_json.except('id')
    end
  end

  def source
    @source ||= GTFS::Source.build(fileUrl, strict: false)
  end

  def gtfsFile?
    File.file?(fileUrl)
  end

  def property
    model.name.downcase.pluralize
  end
end