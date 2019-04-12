LOCAL_PATH := $(call my-dir)/..

include $(CLEAR_VARS)

TARGET_ARCH := x86_64 arm64-v8a

LOCAL_CFLAGS += -DNO_AUDIT=1
LOCAL_LDLIBS := -g

LOCAL_C_INCLUDES := bionic
LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/lib/traceevent/include \
	$(LOCAL_PATH)/include/traceevent \
	$(LOCAL_PATH)/lib/trace-cmd/include \
	$(LOCAL_PATH)/include/trace-cmd \
	$(LOCAL_PATH)/tracecmd/include \
	$(LOCAL_PATH)/include \
	$(LOCAL_PATH)/jni \

LOCAL_SRC_FILES := \
	tracecmd/trace-cmd.c \
	tracecmd/trace-read.c \
	tracecmd/trace-split.c \
	tracecmd/trace-listen.c \
	tracecmd/trace-stack.c \
	tracecmd/trace-hist.c \
	tracecmd/trace-mem.c \
	tracecmd/trace-snapshot.c \
	tracecmd/trace-stat.c \
	tracecmd/trace-profile.c \
	tracecmd/trace-stream.c \
	tracecmd/trace-record.c \
	tracecmd/trace-restore.c \
	tracecmd/trace-check-events.c \
	tracecmd/trace-show.c \
	tracecmd/trace-list.c \
	tracecmd/trace-output.c \
	tracecmd/trace-usage.c \
	tracecmd/trace-msg.c \
	lib/trace-cmd/trace-blk-hack.c \
	lib/trace-cmd/trace-filter-hash.c \
	lib/trace-cmd/trace-ftrace.c \
	lib/trace-cmd/trace-hash.c \
	lib/trace-cmd/trace-hooks.c \
	lib/trace-cmd/trace-input.c \
	lib/trace-cmd/trace-recorder.c \
	lib/trace-cmd/trace-util.c \
	lib/traceevent/event-parse-api.c \
	lib/traceevent/event-parse.c \
	lib/traceevent/event-plugin.c \
	lib/traceevent/kbuffer-parse.c \
	lib/traceevent/parse-filter.c \
	lib/traceevent/parse-utils.c \
	lib/traceevent/tep_strerror.c \
	lib/traceevent/trace-seq.c \

LOCAL_MODULE := trace-cmd

include $(BUILD_EXECUTABLE)
