#pragma once

#include maplibre.hpp

namespace mbgl {
        namespace android {

            class MapLibre {
                    public:
                    static constexpr auto Name() { return "org/maplibre/android/MapLibre"; };
                    static jni::Local<jni::Object<AssetManager>> getAssetManager(jni::JNIEnv&);
                    static void registerNative(jni::JNIEnv&);
            };

        } // namespace android
} // namespace mbgl
