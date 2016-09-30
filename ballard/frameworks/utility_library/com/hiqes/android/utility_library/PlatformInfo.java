
package com.hiqes.android.utility_library;

import android.content.Context;
//import android.os.IPlatformInfoService;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;

public final class PlatformInfo {
    private static final String         LOG_TAG = "PlatformInfo";

    //private IPlatformInfoService    mService;

    // private synchronized IPlatformInfoService getService() {
    //     if (mService == null) {
    //         mService =
    //             IPlatformInfoService.Stub.asInterface(
    //                 ServiceManager.getService(Context.PLATFORM_INFO_SERVICE));
    //             if (mService == null) {
    //                 Log.w(LOG_TAG, "Unable to get service!");
    //             }
    //     }

    //     return mService;
    // }

    public PlatformInfo() {
    }

    public int getSystemServerPid() {
        int                     ret = -1;

        // try {
        //     IPlatformInfoService    srv = getService();

        //     if (srv != null) {
        //         ret = srv.getSystemServerPid();
        //     }
        // } catch (RemoteException e) {
        //     throw new RuntimeException(e);
        // }

        return ret;
    }
}
