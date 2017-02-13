GIFTLIST = {}

def read_list
  GIFTLIST
end

def add_list(name)
  GIFTLIST[name] = "\u{274C}"
end

def delete_list(name)
  GIFTLIST.delete(name)
end

def mark_list(name)
  GIFTLIST[name] = "\u2713"
end

def idea_list(name)

end
