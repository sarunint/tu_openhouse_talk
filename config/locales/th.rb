{
  th: {
    time: {
      formats: {
        formal: lambda { |date, _| "%e %B #{date.year + 543}" },
        time_only: lambda { |date, _| '%H.%M น.' }
      }
    }
  }
}