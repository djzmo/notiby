require 'contracts'
require 'yaml'
require './data/ScannerFetchIncludeColumns'
require './data/ScannerFetchIncludeFilters'

class ScannerFetchSpecBuilderService
  include Contracts::Core
  include Contracts::Builtin

  TERMS_DICT_PATH = '../../config/body_terms_dict.yaml'
  TERMS_TIMEFRAME_PATH = '../../config/body_terms_timeframe.yaml'

  Contract ScannerFetchIncludeFilters, String
  def build_filters(filters, time_frame)

  end

  Contract ScannerFetchIncludeColumns, String => ArrayOf[String]
  def build_columns(include_columns, time_frame)
    columns = []
    ScannerFetchIncludeColumns::ATTRIBUTES.each do |attribute|
      if include_columns.send[attribute].nil?
        translated_term = append_timeframe(translate_term(attribute), time_frame)
        columns.push(translated_term)
      end
    end

    columns
  end

  private
  Contract String => String
  def translate_term(term)
    if @loaded_terms_dict.nil?
      raw_dict = YAML.load_file(TERMS_DICT_PATH)
      @loaded_terms_dict = {}
      raw_dict['terms_dict'].map{|t| @loaded_terms_dict[t.keys.first] = t.values.first}
    end

    if @loaded_terms_dict.keys.include?(term)
      return @loaded_terms_dict[term]
    end

    term
  end

  Contract String => String
  def append_timeframe(term, time_frame)
    if @loaded_terms_timeframe.nil?
      raw_list = YAML.load_file(TERMS_TIMEFRAME_PATH)
      @loaded_terms_timeframe = raw_list['terms_timeframe']
    end

    if @loaded_terms_timeframe.keys.include?(term)
      return term + '|' + time_frame
    end

    term
  end
end
