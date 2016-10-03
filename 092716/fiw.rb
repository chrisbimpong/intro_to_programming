def wd (integer)
  unit = ['zero','one','two','three','four','five','six','seven','eight','nine']
  tns = ['','eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
  tens = ['','ten','twenty','thirty','fourty','fifty','sixty','seventy','eighty','ninety']

  result = ""

  # Billions
  writing = integer / (10**9)
  lf_ova = integer % (10**9)

  if writing > 0
    result << wd(writing) << " billion "
    integer = lf_ova
  end

  # Millions
  writing = integer / (10**6)
  lf_ova = integer % (10**6)

  if writing > 0
    result << wd(writing) << " million "
    integer = lf_ova
  end

  # Thousand
  writing = integer / 1000
  lf_ova = integer % 1000

  if writing > 0
    result << wd(writing) << " thousand "
    integer = lf_ova
  end

  # Hundred 
  writing = integer / 100
  lf_ova = integer % 100

  if writing > 0
    result << wd(writing) << " hundred "
    integer = lf_ova
  end

  # Tens
  writing = integer / 10
  lf_ova = integer % 10

  if writing > 0 
    if writing == 1 && lf_ova > 0
      result << tns[lf_ova]
      lf_ova = 0
    else
      result << tens[writing]
    end
  end

  writing = lf_ova

  # Ones
  if writing >= 0
    result << unit[writing]
  end

  result

end