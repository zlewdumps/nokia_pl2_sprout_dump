#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# A/B
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# API levels
PRODUCT_SHIPPING_API_LEVEL := 26

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \
    aheadset_mic_to_aheadset_recv_off.sh \
    aheadset_mic_to_aheadset_recv_on.sh \
    amic1_to_aheadset_recv_off.sh \
    amic1_to_aheadset_recv_on.sh \
    amic1_to_dheadset_recv_off.sh \
    amic1_to_dheadset_recv_on.sh \
    amic2_to_aheadset_recv_off.sh \
    amic2_to_aheadset_recv_on.sh \
    amic2_to_dheadset_recv_off.sh \
    amic2_to_dheadset_recv_on.sh \
    dheadset_mic_to_dheadset_recv_off.sh \
    dheadset_mic_to_dheadset_recv_on.sh \
    dmic1_to_headset_recv_off.sh \
    dmic1_to_headset_recv_on.sh \
    dmic2_to_headset_recv_off.sh \
    dmic2_to_headset_recv_on.sh \
    dmic3_to_headset_recv_off.sh \
    dmic3_to_headset_recv_on.sh \
    fqcaudioloopback.sh \
    fqcaudioloopback_b2n.sh \
    fqcaudioloopback_c1n.sh \
    fqcaudioloopback_sd1.sh \
    headset_mic_to_headset_recv_off.sh \
    headset_mic_to_headset_recv_on.sh \
    init.class_main.sh \
    init.crda.sh \
    init.drg.lcm.sh \
    init.mdm.sh \
    init.qcom.class_core.sh \
    init.qcom.coex.sh \
    init.qcom.crashdata.sh \
    init.qcom.early_boot.sh \
    init.qcom.efs.sync.sh \
    init.qcom.post_boot.sh \
    init.qcom.sdio.sh \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.qcom.usb.sh \
    init.qti.can.sh \
    init.qti.fm.sh \
    init.qti.ims.sh \
    init.qti.qseecomd.sh \
    init.sat.smartamp.sh \
    qca6234-service.sh \
    remove_data_ramdisk.sh \

PRODUCT_PACKAGES += \
    fstab.qcom \
    android.hardware.nfc@1.2-service.sec.rc \
    init.B2N.target.rc \
    init.B2N.tp.rc \
    init.C1N.lcm.rc \
    init.C1N.target.rc \
    init.C1N.tp.rc \
    init.CTL.target.rc \
    init.DRG.nfc.rc \
    init.DRG.target.rc \
    init.DRG.tp.rc \
    init.HG1.target.rc \
    init.HH1.target.rc \
    init.HH6.target.rc \
    init.PL2.target.rc \
    init.PL2.tp.rc \
    init.PL2.wifi.rc \
    init.SAT.target.rc \
    init.SD1.target.rc \
    init.SD6.target.rc \
    init.SS2.target.rc \
    init.TAS.target.rc \
    init.b2n.fqc_audio.rc \
    init.c1n.fqc_audio.rc \
    init.c1n.poweroff_charging.rc \
    init.fih.dbg.rc \
    init.fih.elabel.rc \
    init.fingerprint.elan.rc \
    init.fingerprint.focal9362_tas.rc \
    init.fingerprint.gxfp3208_b2n.rc \
    init.fingerprint.gxfp3258_drg.rc \
    init.fingerprint.gxfp5288_c1n.rc \
    init.msm.usb.configfs.rc \
    init.nfc.nxp.rc \
    init.nfc.sec.rc \
    init.qcom.battery.rc \
    init.qcom.emmc.rc \
    init.qcom.factory.rc \
    init.qcom.fs.rc \
    init.qcom.lcm.rc \
    init.qcom.ramdump.rc \
    init.qcom.rc \
    init.qcom.sensor.rc \
    init.qcom.target.rc \
    init.qcom.tp.rc \
    init.qcom.usb.rc \
    init.sat.battery.rc \
    init.sat.fqc_audio.rc \
    init.sat.lcm.rc \
    init.sat.led.rc \
    init.sat.nfc.rc \
    init.sat.poweroff_charging.rc \
    init.sat.smartamp.rc \
    init.sd1.fqc_audio.rc \
    init.sku.600WW.P2A.1.rc \
    init.sku.600WW.P2A.2.rc \
    init.sku.600WW.P2H.2.rc \
    init.sku.600WW.P2I.2.rc \
    init.sku.600WW.P2L.1.rc \
    init.sku.600WW.P2L.2.rc \
    init.sku.rc \
    init.target.rc \
    init.vibrator.rc \
    vendor.nxp.hardware.nfc@1.2-service.rc \
    init.rc \
    init.recovery.qcom.rc \
    ueventd.rc \

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/unknown/B2N/B2N-vendor.mk)
