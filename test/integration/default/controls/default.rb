title 'Verifying GCE Instance.'

instance_name = attribute('instance_name')

control "default" do
 title 'Ensure GCE instance_name is running'

  describe google_compute_instance(project: 'terraformlearning-284414',  zone: 'us-west1-b', name: 'test1') do
    its('status') { should eq 'RUNNING' }
    its('machine_type') { should match "f1-micro" }
    its('tags.items') { should include 'web' }
    its('tags.items') { should include 'dev' }
    its('tag_count'){should eq 2}
  end
end
