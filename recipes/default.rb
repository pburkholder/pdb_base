include_recipe 'pdb_motd::default'

append_if_no_line 'pburkholder_base_release' do
  path '/etc/release'
  line 'pburkholder_base_release'
end
