.class public Lcom/android/settings/nearby/MountReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MountReceiver.java"


# static fields
.field private static mHandlerThread:Landroid/os/HandlerThread;

.field private static mPrefHandler:Landroid/os/Handler;


# instance fields
.field private final HANDLER_MSG_DOWNLOAD_TO_INTERNAL:I

.field private final HANDLER_MSG_INIT_PREF:I

.field private final HANDLER_MSG_ONOFF_FALSE:I

.field private final HANDLER_MSG_ONOFF_TRUE:I

.field private final SETTINGS_SYSTEM_DOWNLOAD_PATH:Ljava/lang/String;

.field private final TAGClass:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    sput-object v0, Lcom/android/settings/nearby/MountReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 68
    sput-object v0, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 26
    const-string v0, "MountReceiver"

    iput-object v0, p0, Lcom/android/settings/nearby/MountReceiver;->TAGClass:Ljava/lang/String;

    .line 55
    const-string v0, "NearbyDownloadTo"

    iput-object v0, p0, Lcom/android/settings/nearby/MountReceiver;->SETTINGS_SYSTEM_DOWNLOAD_PATH:Ljava/lang/String;

    .line 70
    const/16 v0, 0x1b59

    iput v0, p0, Lcom/android/settings/nearby/MountReceiver;->HANDLER_MSG_ONOFF_TRUE:I

    .line 72
    const/16 v0, 0x1b5a

    iput v0, p0, Lcom/android/settings/nearby/MountReceiver;->HANDLER_MSG_ONOFF_FALSE:I

    .line 74
    const/16 v0, 0x1b5b

    iput v0, p0, Lcom/android/settings/nearby/MountReceiver;->HANDLER_MSG_DOWNLOAD_TO_INTERNAL:I

    .line 82
    const/16 v0, 0x1b62

    iput v0, p0, Lcom/android/settings/nearby/MountReceiver;->HANDLER_MSG_INIT_PREF:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 87
    move-object/from16 v12, p1

    .line 89
    .local v12, "mContext":Landroid/content/Context;
    sget-object v21, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    if-nez v21, :cond_2

    .line 91
    sget-object v21, Lcom/android/settings/nearby/MountReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v21, :cond_0

    .line 92
    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    const-string v23, "Create HandlerThread"

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v21, Landroid/os/HandlerThread;

    const-string v22, "Preference Handler Thread"

    invoke-direct/range {v21 .. v22}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v21, Lcom/android/settings/nearby/MountReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 95
    :cond_0
    sget-object v21, Lcom/android/settings/nearby/MountReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual/range {v21 .. v21}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v21

    if-nez v21, :cond_1

    .line 96
    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    const-string v23, "Start HandlerThread"

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v21, Lcom/android/settings/nearby/MountReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual/range {v21 .. v21}, Landroid/os/HandlerThread;->start()V

    .line 100
    :cond_1
    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    const-string v23, "Create mPrefHandler"

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v21, Lcom/android/settings/nearby/MountReceiver$1;

    sget-object v22, Lcom/android/settings/nearby/MountReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual/range {v22 .. v22}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v12}, Lcom/android/settings/nearby/MountReceiver$1;-><init>(Lcom/android/settings/nearby/MountReceiver;Landroid/os/Looper;Landroid/content/Context;)V

    sput-object v21, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    .line 152
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "action":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 322
    :cond_3
    :goto_0
    return-void

    .line 155
    :cond_4
    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "ACTION: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v21, "android.intent.action.MEDIA_UNMOUNTED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    const-string v21, "android.intent.action.MEDIA_BAD_REMOVAL"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 160
    :cond_5
    const-string v21, "pref_allshare"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 162
    .local v16, "preference":Landroid/content/SharedPreferences;
    const-string v21, "allshare_download_to"

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 172
    .local v17, "preferenceValue":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "NearbyDownloadTo"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 175
    .local v20, "systemPath":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/Download"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 178
    .local v10, "internalPath":Ljava/lang/String;
    if-eqz v10, :cond_7

    const-string v21, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 181
    :cond_6
    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "change path: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget-object v21, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    const/16 v22, 0x1b5b

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "NearbyDownloadTo"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 189
    :cond_7
    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    const-string v23, "there is no need to change download path."

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    .end local v10    # "internalPath":Ljava/lang/String;
    .end local v16    # "preference":Landroid/content/SharedPreferences;
    .end local v17    # "preferenceValue":Ljava/lang/String;
    .end local v20    # "systemPath":Ljava/lang/String;
    :cond_8
    const-string v21, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 194
    sget-object v21, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    const/16 v22, 0x1b5a

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 198
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "com.samsung.android.nearby.mediaserver.NEARBY_SERVER_STARTED"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 201
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/Download"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 205
    .restart local v10    # "internalPath":Ljava/lang/String;
    const/4 v7, 0x0

    .line 206
    .local v7, "externalPath":Ljava/lang/String;
    const/4 v8, 0x0

    .line 208
    .local v8, "externalVolPath":Ljava/lang/String;
    const-string v21, "storage"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/storage/StorageManager;

    .line 210
    .local v19, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v14

    .line 212
    .local v14, "paths":[Ljava/lang/String;
    if-eqz v14, :cond_b

    .line 213
    move-object v4, v14

    .local v4, "arr$":[Ljava/lang/String;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v11, :cond_b

    aget-object v13, v4, v9

    .line 214
    .local v13, "path":Ljava/lang/String;
    const-string v21, "sd"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_9

    const-string v21, "Sd"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 215
    :cond_9
    move-object v8, v13

    .line 216
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/Download"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 213
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 222
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    .end local v13    # "path":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "NearbyDownloadTo"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 225
    .restart local v20    # "systemPath":Ljava/lang/String;
    if-nez v20, :cond_c

    .line 226
    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    const-string v23, "DOWNLOAD systemPath  is NULL"

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "NearbyDownloadTo"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 229
    move-object/from16 v20, v10

    .line 232
    :cond_c
    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Path: (systemPath)"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", (internalPath)"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", (externalPath)"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 236
    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    const-string v23, "Internal Path"

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :goto_2
    const-string v21, "pref_allshare"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 257
    .local v15, "prefAllshare":Landroid/content/SharedPreferences;
    const-string v21, "allshare_shared_contents"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v18

    .line 260
    .local v18, "sharedContents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v18, :cond_3

    .line 261
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 263
    .local v6, "edit":Landroid/content/SharedPreferences$Editor;
    new-instance v18, Ljava/util/HashSet;

    .end local v18    # "sharedContents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "2"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string v23, "0"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "1"

    aput-object v23, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 266
    .restart local v18    # "sharedContents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v21, "allshare_shared_contents"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 268
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 237
    .end local v6    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v15    # "prefAllshare":Landroid/content/SharedPreferences;
    .end local v18    # "sharedContents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 238
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "mounted"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_e

    .line 240
    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    const-string v23, "External Unmounted: Fix to Internal"

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object v21, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    const/16 v22, 0x1b5b

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 242
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "NearbyDownloadTo"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 245
    :cond_e
    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    const-string v23, "External Path"

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 248
    :cond_f
    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    const-string v23, "Wrong Path: Fix to Internal Default path"

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-object v21, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    const/16 v22, 0x1b5b

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 250
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "NearbyDownloadTo"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 271
    .end local v7    # "externalPath":Ljava/lang/String;
    .end local v8    # "externalVolPath":Ljava/lang/String;
    .end local v10    # "internalPath":Ljava/lang/String;
    .end local v14    # "paths":[Ljava/lang/String;
    .end local v19    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v20    # "systemPath":Ljava/lang/String;
    :cond_10
    const-string v21, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_11

    const-string v21, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_11

    const-string v21, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 275
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nearby/MountReceiver;->isInitialStickyBroadcast()Z

    move-result v21

    if-eqz v21, :cond_12

    .line 276
    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "isInitialStickyBroadcast: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    :cond_12
    const-string v21, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    .line 283
    .local v5, "changedState":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_14

    .line 284
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_13

    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_13

    invoke-static {v12}, Lcom/android/settings/nearby/DMSUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_13

    .line 287
    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    const-string v23, "Set preference state off"

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    sget-object v21, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    const/16 v22, 0x1b5a

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 290
    :cond_13
    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    const-string v23, "Keep current state"

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 293
    :cond_14
    invoke-static {v12}, Lcom/android/settings/nearby/DMSUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_15

    .line 294
    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    const-string v23, "Set preference state off"

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    sget-object v21, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    const/16 v22, 0x1b5a

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 297
    :cond_15
    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    const-string v23, "Keep current state"

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 307
    .end local v5    # "changedState":Landroid/net/NetworkInfo;
    :cond_16
    invoke-static {}, Lcom/android/settings/nearby/DMSUtil;->isVZWFeature()Z

    move-result v21

    if-eqz v21, :cond_3

    const-string v21, "android.intent.action.SETTINGS_SOFT_RESET"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 309
    sget-object v21, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    const/16 v22, 0x1b62

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
