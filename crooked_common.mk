#
# Copyright (C) 2022 The Crooked Android Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/crosshatch/overlay-crooked

# EUICC
PRODUCT_PACKAGES += \
    EuiccSupportPixelOverlay

# ConnectivityThermalPowermanager
include hardware/google/pixel/connectivity_thermal_power_manager/connectivity_thermal_power_manager.mk
