require 'active_model'

class ScannerFetchIncludeFilters
  include ActiveModel::Validations
  ATTRIBUTES = [:change_abs,
                :change,
                :exchange,
                :high,
                :close,
                :low,
                :recommend_all, # Recommend.All
                :volume,
                :high_1m, # High.1M
                :low_1m, # Low.1M
                :high_3m, # High.3M
                :low_3m, # Low.3M
                :perf_3m, # Perf.3M
                :price_52_week_high,
                :price_52_week_low,
                :high_6m, # High.6M
                :low_6m, # Low.6M
                :perf_6m, # Perf.6M
                :high_all, # High.All
                :low_all, # Low.All
                :low_all, # Low.All
                :aroon_down, # Aroon.Down
                :aroon_up, # Aroon.Up
                :ask,
                :total_shares_outstanding,
                :adr, # ADR
                :adx, # ADX
                :atr, # ATR
                :average_volume_10d_calc,
                :average_volume_30d_calc,
                :average_volume_60d_calc,
                :average_volume_90d_calc,
                :ao, # AO
                :bid,
                :bb_lower, # BB.lower
                :bb_upper, # BB.upper
                :bbpower, # BBPower
                :change_abs_15, # change_abs.15
                :change_15, # change.15
                :change_abs_60, # change_abs.60
                :change_60, # change.60
                :change_abs_1, # change_abs.1
                :change_1, # change.1
                :change_abs_240, # change_abs.240
                :change_240, # change.240
                :change_abs_5, # change_abs.5
                :change_5, # change.5
                :change_from_open_abs,
                :change_from_open,
                :cci20, # CCI20
                :donch_ch_20_lower, # DonchCh20.Lower
                :donch_ch_20_upper, # DonchCh20.Upper
                :ema10, # EMA10
                :ema100, # EMA100
                :ema20, # EMA20
                :ema200, # EMA200
                :ema30, # EMA30
                :ema5, # EMA5
                :ema30, # EMA30
                :market_cap_diluted_calc,
                :gap,
                :hull_ma_9, # HullMA9
                :ichimoku_b_line, # Ichimoku.BLine
                :ichimoku_c_line, # Ichimoku.CLine
                :ichimoku_lead_1, # Ichimoku.Lead1
                :ichimoku_lead_2, # Ichimoku.Lead2
                :klt_chnl_lower, # KltChnl.lower
                :klt_chnl_upper, # KltChnl.upper
                :macd_level, # MACD.macd
                :macd_signal, # MACD.signal
                :market_cap_calc,
                :mom, # Mom
                :perf_1m, # Perf.1M
                :recommend_ma, # RecommendMA
                :adx_neg_di, # ADX-DI
                :open,
                :recommend_other, # RecommendOther
                :p_sar, # P.SAR|TF
                :candle, # TODO
                :adx_pos_di, # ADX+DI
                :roc, # ROC
                :rsi, # RSI
                :rsi7, # RSI7
                :relative_volume_10d_calc,
                :sma10, # SMA10
                :sma100, # SMA100
                :sma20, # SMA20
                :sma200, # SMA200
                :sma30, # SMA30
                :sma5, # SMA5
                :sma50, # SMA50
                :stoch_d, # Stoch.D
                :stoch_k, # Stoch.K
                :stoch_rsi_k, # Stoch.RSI.K
                :stoch_rsi_d, # Stoch.RSI.D
                :total_shares_diluted,
                :total_value_traded,
                :uo, # UO
                :volatility_m, # Volatility.M
                :volatility_w, # Volatility.W
                :vwap, # VWAP
                :vwma, # VWMA
                :perf_w, # Perf.W
                :w_r, # W.R
                :perf_ytd, # Perf.YTD
                :perf_y # Perf.Y
  ]
  attr_accessor *ATTRIBUTES
end
