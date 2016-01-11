Puppet::Type.type(:e2fs_immutable).provide(:e2fs_immutable) do
  desc 'chattr'

  commands :lsattr => 'lsattr'
  commands :chattr => 'chattr'

  def exists?
    self.class.send_log(:debug, "call exists?()")
    debug "lsattr: "+lsattr([ resource[:name] ])[4].to_s
    lsattr([ resource[:name] ])[4].to_s == "i" || false
  end

  def create
    self.class.send_log(:debug, "call create()")
    chattr(['+i', resource[:name] ])
  end

  def destroy
    self.class.send_log(:debug, "call destroy()")
    chattr(['-i', resource[:name] ])
  end

end
