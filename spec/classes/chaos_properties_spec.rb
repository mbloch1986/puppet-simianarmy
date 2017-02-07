require 'spec_helper'
describe 'simianarmy::chaos_properties' do
  context 'with defaults for all parameters' do
    it { is_expected.to contain_class('simianarmy::chaos_properties') }
  end
  context 'with simianarmy_chaos_asg_enabled => foo' do
    let(:params) { {:simianarmy_chaos_asg_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.chaos.ASG.enabled = foo/) }
  end
  context 'with simianarmy_chaos_asg_max_terminations_per_day => foo' do
    let(:params) { {:simianarmy_chaos_asg_max_terminations_per_day => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.chaos.ASG.maxTerminationsPerDay = foo/) }
  end
  context 'with simianarmy_chaos_asg_probability => foo' do
    let(:params) { {:simianarmy_chaos_asg_probability => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.chaos.ASG.probability = foo/) }
  end
  context 'with simianarmy_chaos_blockallnetworktraffic_enabled => foo' do
    let(:params) { {:simianarmy_chaos_blockallnetworktraffic_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.chaos.blockallnetworktraffic.enabled = foo/) }
  end
  context 'with simianarmy_chaos_burncpu_enabled => foo' do
    let(:params) { {:simianarmy_chaos_burncpu_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.chaos.burncpu.enabled = foo/) }
  end
  context 'with simianarmy_chaos_burnio_enabled => foo' do
    let(:params) { {:simianarmy_chaos_burnio_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.chaos.burnio.enabled = foo/) }
  end
  context 'with simianarmy_chaos_burnmoney => foo' do
    let(:params) { {:simianarmy_chaos_burnmoney => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.chaos.burnmoney = foo/) }
  end
  context 'with simianarmy_chaos_detachvolumes_enabled => foo' do
    let(:params) { {:simianarmy_chaos_detachvolumes_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.chaos.detachvolumes.enabled = foo/) }
  end
  context 'with simianarmy_chaos_enabled => foo' do
    let(:params) { {:simianarmy_chaos_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.chaos.enabled = foo/) }
  end
  context 'with simianarmy_chaos_faildns_enabled => foo' do
    let(:params) { {:simianarmy_chaos_faildns_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.chaos.faildns.enabled = foo/) }
  end
  context 'with simianarmy_chaos_faildynamodb_enabled => foo' do
    let(:params) { {:simianarmy_chaos_faildynamodb_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.chaos.faildynamodb.enabled = foo/) }
  end
  context 'with simianarmy_chaos_failec2_enabled => foo' do
    let(:params) { {:simianarmy_chaos_failec2_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.chaos.failec2.enabled = foo/) }
  end
  context 'with simianarmy_chaos_fails3_enabled => foo' do
    let(:params) { {:simianarmy_chaos_fails3_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.chaos.fails3.enabled = foo/) }
  end
  context 'with simianarmy_chaos_filldisk_enabled => foo' do
    let(:params) { {:simianarmy_chaos_filldisk_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.chaos.filldisk.enabled = foo/) }
  end
  context 'with simianarmy_chaos_killprocesses_enabled => foo' do
    let(:params) { {:simianarmy_chaos_killprocesses_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.chaos.killprocesses.enabled = foo/) }
  end
  context 'with simianarmy_chaos_leashed => foo' do
    let(:params) { {:simianarmy_chaos_leashed => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.chaos.leashed = foo/) }
  end
  context 'with simianarmy_chaos_mandatory_termination_default_probability => foo' do
    let(:params) { {:simianarmy_chaos_mandatory_termination_default_probability => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.chaos.mandatoryTermination.defaultProbability = foo/) }
  end
  context 'with simianarmy_chaos_mandatory_termination_enabled => foo' do
    let(:params) { {:simianarmy_chaos_mandatory_termination_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.chaos.mandatoryTermination.enabled = foo/) }
  end
  context 'with simianarmy_chaos_mandatory_termination_window_in_days => foo' do
    let(:params) { {:simianarmy_chaos_mandatory_termination_window_in_days => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.chaos.mandatoryTermination.windowInDays = foo/) }
  end
  context 'with simianarmy_chaos_networkcorruption_enabled => foo' do
    let(:params) { {:simianarmy_chaos_networkcorruption_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.chaos.networkcorruption.enabled = foo/) }
  end
  context 'with simianarmy_chaos_networklatency_enabled => foo' do
    let(:params) { {:simianarmy_chaos_networklatency_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.chaos.networklatency.enabled = foo/) }
  end
  context 'with simianarmy_chaos_networkloss_enabled => foo' do
    let(:params) { {:simianarmy_chaos_networkloss_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.chaos.networkloss.enabled = foo/) }
  end
  context 'with simianarmy_chaos_nullroute_enabled => foo' do
    let(:params) { {:simianarmy_chaos_nullroute_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.chaos.nullroute.enabled = foo/) }
  end
  context 'with simianarmy_chaos_shutdowninstance_enabled => foo' do
    let(:params) { {:simianarmy_chaos_shutdowninstance_enabled => 'foo', :path => '/tmp/foo', } }
    it { is_expected.to contain_file('/tmp/foo').with_content(/^simianarmy.chaos.shutdowninstance.enabled = foo/) }
  end
end