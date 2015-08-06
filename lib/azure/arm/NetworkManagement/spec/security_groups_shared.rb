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
def create_network_security_group(resource_group, location)
  params = build_network_security_group_params(location)
  NETWORK_CLIENT.network_security_groups.create_or_update(resource_group.name, params.name, params).value!.body
end

def build_network_security_group_params(location)
  network_security_group_name = get_random_name('sec')
  params = Models::NetworkSecurityGroup.new
  params.name = network_security_group_name
  params.location = location
  params
end