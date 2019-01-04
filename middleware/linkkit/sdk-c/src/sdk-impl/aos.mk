NAME := libiot_sdk_impl

$(NAME)_MBINS_TYPE := kernel
$(NAME)_VERSION := 2.3.0
$(NAME)_SUMMARY := The upper API of linkkit

# $(NAME)_SOURCES := ./sdk-impl.c \
# 		   ./impl_dynreg.c \
# 		   ./impl_linkkit.c \
# 		   ./impl_logpost.c

LINKKIT_MODULE  := middleware/linkkit/sdk-c/src/sdk-impl

$(NAME)_SOURCES := $(wildcard $(SOURCE_ROOT)/$(LINKKIT_MODULE)/*.c)
$(NAME)_SOURCES += $(wildcard $(SOURCE_ROOT)/$(LINKKIT_MODULE)/*/*.c)

$(NAME)_SOURCES := $(foreach S,$($(NAME)_SOURCES),$(subst $(SOURCE_ROOT)/$(LINKKIT_MODULE),.,$(S)))

$(NAME)_COMPONENTS := libiot_utils libiot_log libiot_system libiot_sdk_impl

$(NAME)_INCLUDES := ../../src/infra \
../../src/infra/log \
../../src/infra/utils \
../../src/infra/utils/misc \
../../src/infra/utils/digest \
../../src/infra/system \

