module GoogleImageCharts
  class BarGraph < ChartBase
    def initialize(chartOptionsHash)
      super(chartOptionsHash)

      @chartType = "bvg" # Bar graph

      @chartSpecificOptions += "&chds=a"      # Chart Scale (automatic scaling by Google)
      @chartSpecificOptions += "&chxt=x,y"    # Scale labels for the X and Y axis'
    end

    def chartDataFlattened
      @chartData.join("|")
    end
  end
end
