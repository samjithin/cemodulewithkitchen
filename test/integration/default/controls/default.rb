title 'Verifying GCE Instance.'

#instance_name = attribute('instance_name')

control "default" do
 title 'Ensure GCE instance_name is running'

  describe google_compute_instance(project: 'terraformlearning-284414',  zone: 'us-west1-b', name: 'jithin') do
    its('status') { should eq 'RUNNING' }
  end
end
