require 'spec_helper'

describe 'm2_settings', :type => 'class' do
	context "Should create settings.xml file" do
		let(:params) { {
			:user              => 'hosting',
			:settings_xml_path => '/tmp/settings.xml'
		} }

		it do
			should contain_file('/home/hosting/.m2').with(
				'ensure' => 'directory',
		        'owner'  => 'hosting',
		        'group'  => 'hosting'
			)
			should contain_file('/home/hosting/.m2/settings.xml').with(
				'mode'  => '0664',
		        'owner' => 'hosting',
		        'group' => 'hosting'
			)
		end
	end
end
