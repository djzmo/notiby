require 'active_model'

class ScannerFetchIncludeColumns
  include ActiveModel::Validations
  ATTRIBUTES = [:base_currency_logoid,
                :currency_logoid,
                :name,
                :close, # |TF
                :change, # |TF
                :change_abs, # |TF
                :high, # |TF
                :low, # |TF
                :volume, # |TF
                :recommend_all, # Recommend.All|TF
                :exchange,
                :description,
                :type,
                :subtype,
                :update_mode, # |TF
                :pricescale,
                :minmov,
                :fractional,
                :minmove2,
                :perf_w, # Perf.W
                :perf_1m, # Perf.1M
                :perf_3m, # Perf.3M
                :perf_6m, # Perf.6M
                :perf_ytd, # Perf.YTD
                :perf_y, # Perf.Y
                :volatility_d, # Volatility.D
                :recommend_other, # Recommend.Other|TF
                :adx, # ADX|TF
                :ao, # AO|TF
                :atr, # ATR|TF
                :cci20, # CCI20|TF
                :macd_macd, # MACD.macd|TF
                :macd_signal, # MACD.signal|TF
                :mom, # Mom|TF
                :rsi, # RSI|TF
                :stoch_k, # Stoch.K|TF
                :stoch_d, # Stoch.D|TF
                :adx_neg_di, # ADX-DI|TF
                :adx_pos_di, # ADX+DI|TF
                :recommend_ma, # Recommend.MA|TF
                :sma20, # SMA20|TF
                :sma50, # SMA50|TF
                :sma200, # SMA200|TF
                :bb_upper, # BB.upper|TF
                :bb_lower # BB.lower|TF
  ]
  attr_accessor *ATTRIBUTES
end
