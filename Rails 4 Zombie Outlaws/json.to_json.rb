limbs_hashes = @limbs.map do |limb|
  { kind: limb.kind, owner_name: limb.zombie.name }
end
limbs_hashes.to_json
