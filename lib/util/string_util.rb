class StringUtil
  def self.to_half_width_lowercase(from_str)
    if !from_str.instance_of?(String)
      raise ArgumentError, "Argument(from_str) must be the String type not #{from_str.class}"
    end

    tmp = from_str.tr('０-９ａ-ｚＡ-Ｚ！”＃＄％＆’（）＝ー～＾｜￥｀＠｛「＋；＊：｝」＜，＞．？・＿、。　', '0-9a-zA-Z!"#$%&\'()=ー~^|￥`@{「+;*:}」<,>.?・_、。 ')
    tmp.downcase
  end
end