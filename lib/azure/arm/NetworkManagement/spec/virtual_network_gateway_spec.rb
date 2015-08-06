#-------------------------------------------------------------------------
# Copyright 2015 Microsoft Open Technologies, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------

require_relative 'test_helper'
require_relative 'network_shared'
require_relative 'subnet_shared'
require_relative 'public_ip_addresses_shared'
require_relative 'virtual_network_gateway_shared'

include MsRestAzure
include Azure::ARM::Resources
include Azure::ARM::Network

describe VirtualNetworkGateways do

  before(:all) do
    @client = NETWORK_CLIENT.virtual_network_gateways
    @location = 'westus'
    @resource_group = create_resource_group
  end
  after(:all) do
    delete_resource_group(@resource_group.name)
  end

  example 'virtual network gateway api' do
    skip('no long running tasks should be performed') unless RUN_LONG_TASKS
    # create virtual network gateway
    params = build_virtual_network_gateway_params(@location, @resource_group)
    result = @client.create_or_update(@resource_group.name, params.name, params).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body.name).to eq(params.name)
    virtual_network_gateway = result.body
    # get virtual network gateway
    result = @client.get(@resource_group.name, virtual_network_gateway.name).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body.name).to eq(virtual_network_gateway.name)
    # reset virtual network gateway
    result = @client.reset(@resource_group.name, virtual_network_gateway.name, virtual_network_gateway).value!
    expect(result.response.status).to eq(200)
    # delete virtual network gateway
    result = @client.delete(@resource_group.name, virtual_network_gateway.name).value!
    expect(result.response.status).to eq(200)
  end


  it 'should list all the virtual network gateways stored' do
    result = @client.list(@resource_group.name).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body.value).to be_a(Array)
    until result.body.next_link.to_s.empty? do
      result = @client.list_next(result.body.next_link).value!
      expect(result.body.value).not_to be_nil
      expect(result.body.value).to be_a(Array)
    end
  end


end