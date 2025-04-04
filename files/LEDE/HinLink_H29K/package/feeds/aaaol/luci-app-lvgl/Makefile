include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-lvgl-ui-h29k
PKG_VERSION:=1.0-1
PKG_RELEASE:=1

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-lvgl-ui-h29k
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=3. Applications
  TITLE:=LVGL UI for H29K
  FILE:=h29k-luci-app-lvgl-ui_1.0-1_aarch64_generic.ipk
  URL:=https://github.com/aaaol/OpenWrt/releases
endef

define Build/Prepare
  mkdir -p $(PKG_BUILD_DIR)
  $(CP) $(CURDIR)/$(FILE) $(PKG_BUILD_DIR)/
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/luci-app-lvgl-ui-h29k/install
  $(INSTALL_DIR) $(1)/usr/lib/opkg
  $(INSTALL_DATA) $(PKG_BUILD_DIR)/$(FILE) $(1)/usr/lib/opkg/
endef

$(eval $(call BuildPackage,luci-app-lvgl-ui-h29k))