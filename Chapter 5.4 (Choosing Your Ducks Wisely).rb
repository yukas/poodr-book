# Rails code

def first(*args)
  if args.any?
    if args.first.kind_of?(Integer) || (loaded? && !args.first.kind_of?(Hash))
      to_a.first(*args)
    else
      apply_finder_options(args.first).first
    end
  else
    find_first
  end
end