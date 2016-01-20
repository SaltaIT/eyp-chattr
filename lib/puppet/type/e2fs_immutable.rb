Puppet::Type.newtype(:e2fs_immutable) do
  @doc = 'Manage immutable bit in ext fs'

  ensurable

  newparam(:name, :namevar => true) do
    desc 'file to manage'

    validate do |value|
      unless value.is_a?(String)
        raise Pupper::Error,
          "not a string, madafaca"
      end

      unless File.exist?(value)
        raise Pupper::Error,
          "no such file, madafaca"
      end
    end
  end
end
