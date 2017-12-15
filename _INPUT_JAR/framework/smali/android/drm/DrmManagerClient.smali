.class public Landroid/drm/DrmManagerClient;
.super Ljava/lang/Object;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/DrmManagerClient$InfoHandler;,
        Landroid/drm/DrmManagerClient$EventHandler;,
        Landroid/drm/DrmManagerClient$OnErrorListener;,
        Landroid/drm/DrmManagerClient$OnEventListener;,
        Landroid/drm/DrmManagerClient$OnInfoListener;
    }
.end annotation


# static fields
.field private static final ACTION_PROCESS_DRM_INFO:I = 0x3ea

.field private static final ACTION_REMOVE_ALL_RIGHTS:I = 0x3e9

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field public static final INVALID_SESSION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "DrmManagerClient"


# instance fields
.field private final isLogEnabled:Z

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mContext:Landroid/content/Context;

.field private mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

.field mEventThread:Landroid/os/HandlerThread;

.field private mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

.field mInfoThread:Landroid/os/HandlerThread;

.field private mNativeContext:J

.field private mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

.field private mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

.field private mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

.field private volatile mReleased:Z

.field private mUniqueId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    const-string v0, "drmframework_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/drm/DrmManagerClient;->isLogEnabled:Z

    .line 336
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    .line 337
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createEventThreads()V

    .line 340
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->_initialize()I

    move-result v0

    iput v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    .line 341
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method private native _acquireDrmInfo(ILandroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;
.end method

.method private native _canHandle(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method private _checkFDSupporting(Ljava/lang/String;)I
    .registers 13
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 295
    new-array v1, v6, [Ljava/lang/String;

    const-string v9, ".dcf"

    aput-object v9, v1, v5

    .line 296
    .local v1, "OmaExtensions":[Ljava/lang/String;
    const/16 v9, 0xb

    new-array v2, v9, [Ljava/lang/String;

    const-string v9, ".pyv"

    aput-object v9, v2, v5

    const-string v9, ".pya"

    aput-object v9, v2, v6

    const-string v9, ".wmv"

    aput-object v9, v2, v7

    const-string v9, ".wma"

    aput-object v9, v2, v8

    const/4 v9, 0x4

    const-string v10, ".asf"

    aput-object v10, v2, v9

    const/4 v9, 0x5

    const-string v10, ".eny"

    aput-object v10, v2, v9

    const/4 v9, 0x6

    const-string v10, ".pye"

    aput-object v10, v2, v9

    const/4 v9, 0x7

    const-string v10, ".ismv"

    aput-object v10, v2, v9

    const/16 v9, 0x8

    const-string v10, ".isma"

    aput-object v10, v2, v9

    const/16 v9, 0x9

    const-string v10, ".mp4"

    aput-object v10, v2, v9

    const/16 v9, 0xa

    const-string v10, ".fdsa"

    aput-object v10, v2, v9

    .line 297
    .local v2, "PlayReadyExtensions":[Ljava/lang/String;
    new-array v0, v7, [Ljava/lang/String;

    const-string v9, ".avi"

    aput-object v9, v0, v5

    const-string v9, "divx"

    aput-object v9, v0, v6

    .line 299
    .local v0, "DivxExtensions":[Ljava/lang/String;
    if-nez p1, :cond_51

    .line 326
    :cond_50
    :goto_50
    return v5

    .line 302
    :cond_51
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_52
    array-length v9, v1

    if-ge v3, v9, :cond_66

    .line 304
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    aget-object v10, v1, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_63

    move v5, v6

    .line 306
    goto :goto_50

    .line 302
    :cond_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    .line 310
    :cond_66
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_67
    array-length v6, v2

    if-ge v4, v6, :cond_7b

    .line 312
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    aget-object v9, v2, v4

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_78

    move v5, v7

    .line 314
    goto :goto_50

    .line 310
    :cond_78
    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    .line 318
    :cond_7b
    const/4 v3, 0x0

    :goto_7c
    array-length v6, v0

    if-ge v3, v6, :cond_50

    .line 320
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8d

    move v5, v8

    .line 322
    goto :goto_50

    .line 318
    :cond_8d
    add-int/lit8 v3, v3, 0x1

    goto :goto_7c
.end method

.method private native _checkRightsStatus(ILjava/lang/String;I)I
.end method

.method private native _closeConvertSession(II)Landroid/drm/DrmConvertedStatus;
.end method

.method private native _convertData(II[B)Landroid/drm/DrmConvertedStatus;
.end method

.method private native _getAllSupportInfo(I)[Landroid/drm/DrmSupportInfo;
.end method

.method private native _getConstraints(ILjava/lang/String;I)Landroid/content/ContentValues;
.end method

.method private native _getDrmObjectType(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private native _getMetadata(ILjava/lang/String;)Landroid/content/ContentValues;
.end method

.method private native _getOriginalMimeType(ILjava/lang/String;Ljava/io/FileDescriptor;)Ljava/lang/String;
.end method

.method private native _initialize()I
.end method

.method private native _installDrmEngine(ILjava/lang/String;)V
.end method

.method private native _openConvertSession(ILjava/lang/String;)I
.end method

.method private native _processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
.end method

.method private native _release(I)V
.end method

.method private native _removeAllRights(I)I
.end method

.method private native _removeRights(ILjava/lang/String;)I
.end method

.method private native _saveRights(ILandroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native _setListeners(ILjava/lang/Object;)V
.end method

.method static synthetic access$000(Landroid/drm/DrmManagerClient;)I
    .registers 2
    .param p0, "x0"    # Landroid/drm/DrmManagerClient;

    .prologue
    .line 51
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    return v0
.end method

.method static synthetic access$100(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
    .registers 4
    .param p0, "x0"    # Landroid/drm/DrmManagerClient;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/drm/DrmInfo;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/drm/DrmManagerClient;->_processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/drm/DrmManagerClient;I)I
    .registers 3
    .param p0, "x0"    # Landroid/drm/DrmManagerClient;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->getEventType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfoStatus;)I
    .registers 4
    .param p0, "x0"    # Landroid/drm/DrmManagerClient;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/drm/DrmInfoStatus;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/drm/DrmManagerClient;->getErrorType(ILandroid/drm/DrmInfoStatus;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/drm/DrmManagerClient;I)I
    .registers 3
    .param p0, "x0"    # Landroid/drm/DrmManagerClient;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->_removeAllRights(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;
    .registers 2
    .param p0, "x0"    # Landroid/drm/DrmManagerClient;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    return-object v0
.end method

.method static synthetic access$600(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;
    .registers 2
    .param p0, "x0"    # Landroid/drm/DrmManagerClient;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$700(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnInfoListener;
    .registers 2
    .param p0, "x0"    # Landroid/drm/DrmManagerClient;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    return-object v0
.end method

.method private convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1235
    const/4 v8, 0x0

    .line 1236
    .local v8, "path":Ljava/lang/String;
    if-eqz p1, :cond_1d

    .line 1237
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 1238
    .local v10, "scheme":Ljava/lang/String;
    if-eqz v10, :cond_19

    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "file"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1240
    :cond_19
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 1269
    .end local v10    # "scheme":Ljava/lang/String;
    :cond_1d
    :goto_1d
    return-object v8

    .line 1242
    .restart local v10    # "scheme":Ljava/lang/String;
    :cond_1e
    const-string v0, "http"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1243
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1d

    .line 1245
    :cond_2b
    const-string v0, "content"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1246
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 1247
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1249
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_3c
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1251
    if-eqz v6, :cond_58

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_70

    .line 1252
    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri could not be found in media store"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_60
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3c .. :try_end_60} :catch_60
    .catchall {:try_start_3c .. :try_end_60} :catchall_69

    .line 1257
    :catch_60
    move-exception v7

    .line 1258
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri is not formatted in a way so that it can be found in media store."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_69
    .catchall {:try_start_61 .. :try_end_69} :catchall_69

    .line 1261
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_69
    move-exception v0

    if-eqz v6, :cond_6f

    .line 1262
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6f
    throw v0

    .line 1255
    :cond_70
    :try_start_70
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1256
    .local v9, "pathIndex":I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_79
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_70 .. :try_end_79} :catch_60
    .catchall {:try_start_70 .. :try_end_79} :catchall_69

    move-result-object v8

    .line 1261
    if-eqz v6, :cond_1d

    .line 1262
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1d

    .line 1266
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "pathIndex":I
    :cond_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri scheme is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createEventThreads()V
    .registers 3

    .prologue
    .line 1314
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-nez v0, :cond_3e

    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    if-nez v0, :cond_3e

    .line 1315
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DrmManagerClient.InfoHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    .line 1316
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1317
    new-instance v0, Landroid/drm/DrmManagerClient$InfoHandler;

    iget-object v1, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/drm/DrmManagerClient$InfoHandler;-><init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    .line 1319
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DrmManagerClient.EventHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    .line 1320
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1321
    new-instance v0, Landroid/drm/DrmManagerClient$EventHandler;

    iget-object v1, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/drm/DrmManagerClient$EventHandler;-><init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    .line 1323
    :cond_3e
    return-void
.end method

.method private createListeners()V
    .registers 3

    .prologue
    .line 1326
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Landroid/drm/DrmManagerClient;->_setListeners(ILjava/lang/Object;)V

    .line 1327
    return-void
.end method

.method private getErrorType(ILandroid/drm/DrmInfoStatus;)I
    .registers 7
    .param p1, "infoType"    # I
    .param p2, "infoStatus"    # Landroid/drm/DrmInfoStatus;

    .prologue
    .line 1182
    const/4 v0, -0x1

    .line 1184
    .local v0, "error":I
    sparse-switch p1, :sswitch_data_3e

    .line 1206
    :goto_4
    return v0

    .line 1194
    :sswitch_5
    if-eqz p2, :cond_17

    iget-object v1, p2, Landroid/drm/DrmInfoStatus;->mimeType:Ljava/lang/String;

    const-string/jumbo v2, "video/wvm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    iget v1, p2, Landroid/drm/DrmInfoStatus;->statusCode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_21

    .line 1197
    :cond_17
    const-string v1, "DrmManagerClient"

    const-string v2, "getErrorType return TYPE_PROCESS_DRM_INFO_FAILED becauseof widevine or STATUS_ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    const/16 v0, 0x7d6

    goto :goto_4

    .line 1201
    :cond_21
    const-string v1, "DrmManagerClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getErrorType infoStatus.statusCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Landroid/drm/DrmInfoStatus;->statusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget v0, p2, Landroid/drm/DrmInfoStatus;->statusCode:I

    goto :goto_4

    .line 1184
    :sswitch_data_3e
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x16 -> :sswitch_5
        0x1f -> :sswitch_5
        0x20 -> :sswitch_5
        0x21 -> :sswitch_5
        0x22 -> :sswitch_5
    .end sparse-switch
.end method

.method private getEventType(I)I
    .registers 3
    .param p1, "infoType"    # I

    .prologue
    .line 1160
    const/4 v0, -0x1

    .line 1162
    .local v0, "eventType":I
    sparse-switch p1, :sswitch_data_8

    .line 1176
    :goto_4
    return v0

    .line 1173
    :sswitch_5
    const/16 v0, 0x3ea

    goto :goto_4

    .line 1162
    :sswitch_data_8
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x16 -> :sswitch_5
        0x1f -> :sswitch_5
        0x20 -> :sswitch_5
        0x21 -> :sswitch_5
        0x22 -> :sswitch_5
    .end sparse-switch
.end method

.method public static notify(Ljava/lang/Object;IILjava/lang/String;)V
    .registers 8
    .param p0, "thisReference"    # Ljava/lang/Object;
    .param p1, "uniqueId"    # I
    .param p2, "infoType"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 229
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "thisReference":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/drm/DrmManagerClient;

    .line 231
    .local v0, "instance":Landroid/drm/DrmManagerClient;
    if-eqz v0, :cond_1a

    iget-object v2, v0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    if-eqz v2, :cond_1a

    .line 232
    iget-object v2, v0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1, p2, p3}, Landroid/drm/DrmManagerClient$InfoHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 234
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient$InfoHandler;->sendMessage(Landroid/os/Message;)Z

    .line 236
    .end local v1    # "m":Landroid/os/Message;
    :cond_1a
    return-void
.end method


# virtual methods
.method public acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;
    .registers 20
    .param p1, "drmInfoRequest"    # Landroid/drm/DrmInfoRequest;

    .prologue
    .line 663
    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/drm/DrmInfoRequest;->isValid()Z

    move-result v15

    if-nez v15, :cond_10

    .line 664
    :cond_8
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "Given drmInfoRequest is invalid/null"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 668
    :cond_10
    const/4 v13, 0x0

    .line 669
    .local v13, "lDrmInfo":Landroid/drm/DrmInfo;
    const/4 v9, 0x0

    .line 670
    .local v9, "fis":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 671
    .local v11, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 672
    .local v3, "DmFd":Ljava/io/FileDescriptor;
    const/4 v2, 0x0

    .line 673
    .local v2, "DcfFd":Ljava/io/FileDescriptor;
    const/4 v4, 0x0

    .line 675
    .local v4, "Fd":Ljava/io/FileDescriptor;
    const-string v15, "drm_path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/drm/DrmInfoRequest;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 678
    .local v8, "filepath":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/drm/DrmInfoRequest;->getInfoType()I

    move-result v15

    const/16 v16, 0x7

    move/from16 v0, v16

    if-ne v15, v0, :cond_21f

    .line 679
    if-eqz v8, :cond_76

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_76

    .line 681
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    const-string v16, ".dm"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_17b

    .line 683
    :try_start_3e
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_43} :catch_15c

    .line 684
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .local v10, "fis":Ljava/io/FileInputStream;
    :try_start_43
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 685
    const-string v15, "FileDescriptorKey"

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 687
    const-string v15, ".dm"

    const-string v16, ".dcf"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 688
    .local v5, "Filename":Ljava/lang/String;
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_63} :catch_2c9

    .line 689
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .local v12, "fos":Ljava/io/FileOutputStream;
    :try_start_63
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 690
    const-string v15, "OutFileDescriptorKey"

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_74} :catch_2cd

    move-object v11, v12

    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    move-object v9, v10

    .line 734
    .end local v5    # "Filename":Ljava/lang/String;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    :cond_76
    :goto_76
    move-object/from16 v0, p0

    iget v15, v0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v15, v1}, Landroid/drm/DrmManagerClient;->_acquireDrmInfo(ILandroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v13

    .line 736
    invoke-virtual/range {p1 .. p1}, Landroid/drm/DrmInfoRequest;->getInfoType()I

    move-result v15

    const/16 v16, 0x7

    move/from16 v0, v16

    if-ne v15, v0, :cond_2a9

    .line 737
    const-string v15, "DrmManagerClient"

    const-string v16, "_acquireDrmInfo TYPE_CONVERT_DRM_FILE"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    if-eqz v9, :cond_98

    .line 740
    :try_start_95
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_2b3

    .line 743
    :cond_98
    :goto_98
    if-eqz v11, :cond_9d

    .line 745
    :try_start_9a
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_2b6

    .line 748
    :cond_9d
    :goto_9d
    const-string v15, "DrmManagerClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "_acquireDrmInfo TYPE_CONVERT_DRM_FILE "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "status"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const-string/jumbo v15, "status"

    invoke-virtual {v13, v15}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    const-string/jumbo v16, "success"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f5

    .line 750
    const-string v15, "DrmManagerClient"

    const-string v16, "DM file delete DrmInfoRequest.SUCCESS"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    if-eqz v8, :cond_f5

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_f5

    .line 752
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 753
    .local v14, "uf":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_f5

    .line 754
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v6

    .line 755
    .local v6, "delFlag":Z
    if-nez v6, :cond_f5

    .line 756
    const-string v15, "DrmManagerClient"

    const-string v16, "DM file delete fail"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    .end local v6    # "delFlag":Z
    .end local v14    # "uf":Ljava/io/File;
    :cond_f5
    const-string/jumbo v15, "status"

    invoke-virtual {v13, v15}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    const-string v16, "fail"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15b

    .line 762
    const-string v15, "DrmManagerClient"

    const-string v16, "dcf file delete DrmInfoRequest.FAIL"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    if-eqz v8, :cond_15b

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_15b

    .line 764
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    const-string v16, ".dm"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_25f

    .line 765
    const-string v15, ".dm"

    const-string v16, ".dcf"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 766
    .restart local v5    # "Filename":Ljava/lang/String;
    const-string v15, "DrmManagerClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "dcf file delete DrmInfoRequest.FAIL"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 768
    .restart local v14    # "uf":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_15b

    .line 769
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v6

    .line 770
    .restart local v6    # "delFlag":Z
    if-nez v6, :cond_15b

    .line 771
    const-string v15, "DrmManagerClient"

    const-string v16, "DM file delete fail"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    .end local v5    # "Filename":Ljava/lang/String;
    .end local v6    # "delFlag":Z
    .end local v14    # "uf":Ljava/io/File;
    :cond_15b
    :goto_15b
    return-object v13

    .line 691
    :catch_15c
    move-exception v7

    .line 692
    .local v7, "e":Ljava/io/IOException;
    :goto_15d
    const-string v15, "DrmManagerClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception the file "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_76

    .line 695
    .end local v7    # "e":Ljava/io/IOException;
    :cond_17b
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    const-string v16, ".fl"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1e0

    .line 697
    :try_start_187
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_18c
    .catch Ljava/io/IOException; {:try_start_187 .. :try_end_18c} :catch_1c1

    .line 698
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :try_start_18c
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 699
    const-string v15, "FileDescriptorKey"

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 701
    const-string v15, ".fl"

    const-string v16, ".dcf"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 702
    .restart local v5    # "Filename":Ljava/lang/String;
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1ac
    .catch Ljava/io/IOException; {:try_start_18c .. :try_end_1ac} :catch_2c0

    .line 703
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :try_start_1ac
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 704
    const-string v15, "OutFileDescriptorKey"

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1bd
    .catch Ljava/io/IOException; {:try_start_1ac .. :try_end_1bd} :catch_2c4

    move-object v11, v12

    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    move-object v9, v10

    .line 707
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_76

    .line 705
    .end local v5    # "Filename":Ljava/lang/String;
    :catch_1c1
    move-exception v7

    .line 706
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_1c2
    const-string v15, "DrmManagerClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception the file "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_76

    .line 710
    .end local v7    # "e":Ljava/io/IOException;
    :cond_1e0
    const-string v15, "DrmManagerClient"

    const-string v16, "file extention is not dm or fl"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :try_start_1e7
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1ec
    .catch Ljava/io/IOException; {:try_start_1e7 .. :try_end_1ec} :catch_200

    .line 714
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :try_start_1ec
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 715
    const-string v15, "FileDescriptorKey"

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1fd
    .catch Ljava/io/IOException; {:try_start_1ec .. :try_end_1fd} :catch_2bc

    move-object v9, v10

    .line 718
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_76

    .line 716
    :catch_200
    move-exception v7

    .line 717
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_201
    const-string v15, "DrmManagerClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception the file "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_76

    .line 723
    .end local v7    # "e":Ljava/io/IOException;
    :cond_21f
    if-eqz v8, :cond_76

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_76

    .line 725
    :try_start_227
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_22c
    .catch Ljava/io/IOException; {:try_start_227 .. :try_end_22c} :catch_240

    .line 726
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :try_start_22c
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 727
    const-string v15, "FileDescriptorKey"

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_23d
    .catch Ljava/io/IOException; {:try_start_22c .. :try_end_23d} :catch_2b9

    move-object v9, v10

    .line 730
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_76

    .line 728
    :catch_240
    move-exception v7

    .line 729
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_241
    const-string v15, "DrmManagerClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception the file "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_76

    .line 775
    .end local v7    # "e":Ljava/io/IOException;
    :cond_25f
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    const-string v16, ".fl"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_15b

    .line 776
    const-string v15, ".fl"

    const-string v16, ".dcf"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 777
    .restart local v5    # "Filename":Ljava/lang/String;
    const-string v15, "DrmManagerClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "dcf file delete DrmInfoRequest.FAIL"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 779
    .restart local v14    # "uf":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_15b

    .line 780
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v6

    .line 781
    .restart local v6    # "delFlag":Z
    if-nez v6, :cond_15b

    .line 782
    const-string v15, "DrmManagerClient"

    const-string v16, "DM file delete fail"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15b

    .line 790
    .end local v5    # "Filename":Ljava/lang/String;
    .end local v6    # "delFlag":Z
    .end local v14    # "uf":Ljava/io/File;
    :cond_2a9
    if-eqz v9, :cond_15b

    .line 792
    :try_start_2ab
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2ae
    .catch Ljava/io/IOException; {:try_start_2ab .. :try_end_2ae} :catch_2b0

    goto/16 :goto_15b

    .line 793
    :catch_2b0
    move-exception v15

    goto/16 :goto_15b

    .line 741
    :catch_2b3
    move-exception v15

    goto/16 :goto_98

    .line 746
    :catch_2b6
    move-exception v15

    goto/16 :goto_9d

    .line 728
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catch_2b9
    move-exception v7

    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto :goto_241

    .line 716
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catch_2bc
    move-exception v7

    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_201

    .line 705
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catch_2c0
    move-exception v7

    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_1c2

    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "Filename":Ljava/lang/String;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :catch_2c4
    move-exception v7

    move-object v11, v12

    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_1c2

    .line 691
    .end local v5    # "Filename":Ljava/lang/String;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catch_2c9
    move-exception v7

    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_15d

    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "Filename":Ljava/lang/String;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :catch_2cd
    move-exception v7

    move-object v11, v12

    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_15d
.end method

.method public acquireRights(Landroid/drm/DrmInfoRequest;)I
    .registers 4
    .param p1, "drmInfoRequest"    # Landroid/drm/DrmInfoRequest;

    .prologue
    .line 819
    invoke-virtual {p0, p1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 820
    .local v0, "drmInfo":Landroid/drm/DrmInfo;
    if-nez v0, :cond_9

    .line 821
    const/16 v1, -0x7d0

    .line 823
    :goto_8
    return v1

    :cond_9
    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    move-result v1

    goto :goto_8
.end method

.method public canHandle(Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 630
    if-eqz p1, :cond_6

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_18

    :cond_6
    if-eqz p2, :cond_10

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 631
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri or the mimetype should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_18
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canHandle(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 585
    if-eqz p1, :cond_a

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    :cond_a
    if-eqz p2, :cond_14

    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 586
    :cond_14
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Path or the mimetype should be non null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 590
    :cond_1c
    if-eqz p1, :cond_24

    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->_checkFDSupporting(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2b

    .line 592
    :cond_24
    iget v5, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v5, p1, p2}, Landroid/drm/DrmManagerClient;->_canHandle(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 612
    :cond_2a
    :goto_2a
    return v4

    .line 596
    :cond_2b
    const/4 v4, 0x0

    .line 597
    .local v4, "result":Z
    const/4 v2, 0x0

    .line 600
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_2d
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_4a
    .catchall {:try_start_2d .. :try_end_32} :catchall_6f

    .line 601
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_32
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 602
    .local v1, "fd":Ljava/io/FileDescriptor;
    iget v5, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, p2}, Landroid/drm/DrmManagerClient;->_canHandle(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3f} :catch_7b
    .catchall {:try_start_32 .. :try_end_3f} :catchall_78

    move-result v4

    .line 606
    if-eqz v3, :cond_7e

    .line 608
    :try_start_42
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_47

    move-object v2, v3

    .line 609
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2a

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_47
    move-exception v5

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2a

    .line 603
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :catch_4a
    move-exception v0

    .line 604
    .local v0, "e":Ljava/io/IOException;
    :goto_4b
    :try_start_4b
    const-string v5, "DrmManagerClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception the file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_4b .. :try_end_67} :catchall_6f

    .line 606
    if-eqz v2, :cond_2a

    .line 608
    :try_start_69
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_2a

    .line 609
    :catch_6d
    move-exception v5

    goto :goto_2a

    .line 606
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_6f
    move-exception v5

    :goto_70
    if-eqz v2, :cond_75

    .line 608
    :try_start_72
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    .line 609
    :cond_75
    :goto_75
    throw v5

    :catch_76
    move-exception v6

    goto :goto_75

    .line 606
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_78
    move-exception v5

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_70

    .line 603
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_7b
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_4b

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_7e
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2a
.end method

.method public checkRightsStatus(Landroid/net/Uri;)I
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 966
    if-eqz p1, :cond_6

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_e

    .line 967
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 969
    :cond_e
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Landroid/net/Uri;I)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "action"    # I

    .prologue
    .line 1028
    if-eqz p1, :cond_6

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_e

    .line 1029
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1031
    :cond_e
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Ljava/lang/String;)I
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 955
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Ljava/lang/String;I)I
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "action"    # I

    .prologue
    .line 982
    if-eqz p1, :cond_10

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v5

    if-nez v5, :cond_18

    .line 983
    :cond_10
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Given path or action is not valid"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 987
    :cond_18
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->_checkFDSupporting(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_25

    .line 989
    iget v5, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v5, p1, p2}, Landroid/drm/DrmManagerClient;->_checkRightsStatus(ILjava/lang/String;I)I

    move-result v4

    .line 1009
    :cond_24
    :goto_24
    return v4

    .line 993
    :cond_25
    const/4 v4, 0x0

    .line 994
    .local v4, "result":I
    const/4 v2, 0x0

    .line 997
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_27
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_44
    .catchall {:try_start_27 .. :try_end_2c} :catchall_69

    .line 998
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_2c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 999
    .local v1, "fd":Ljava/io/FileDescriptor;
    iget v5, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, p2}, Landroid/drm/DrmManagerClient;->_checkRightsStatus(ILjava/lang/String;I)I
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_39} :catch_75
    .catchall {:try_start_2c .. :try_end_39} :catchall_72

    move-result v4

    .line 1003
    if-eqz v3, :cond_78

    .line 1005
    :try_start_3c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_41

    move-object v2, v3

    .line 1006
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_24

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_41
    move-exception v5

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_24

    .line 1000
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :catch_44
    move-exception v0

    .line 1001
    .local v0, "e":Ljava/io/IOException;
    :goto_45
    :try_start_45
    const-string v5, "DrmManagerClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception the file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_45 .. :try_end_61} :catchall_69

    .line 1003
    if-eqz v2, :cond_24

    .line 1005
    :try_start_63
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_24

    .line 1006
    :catch_67
    move-exception v5

    goto :goto_24

    .line 1003
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_69
    move-exception v5

    :goto_6a
    if-eqz v2, :cond_6f

    .line 1005
    :try_start_6c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    .line 1006
    :cond_6f
    :goto_6f
    throw v5

    :catch_70
    move-exception v6

    goto :goto_6f

    .line 1003
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_72
    move-exception v5

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_6a

    .line 1000
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_75
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_45

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_78
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_24
.end method

.method public closeConvertSession(I)Landroid/drm/DrmConvertedStatus;
    .registers 3
    .param p1, "convertId"    # I

    .prologue
    .line 1156
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_closeConvertSession(II)Landroid/drm/DrmConvertedStatus;

    move-result-object v0

    return-object v0
.end method

.method public convertData(I[B)Landroid/drm/DrmConvertedStatus;
    .registers 5
    .param p1, "convertId"    # I
    .param p2, "inputData"    # [B

    .prologue
    .line 1138
    if-eqz p2, :cond_5

    array-length v0, p2

    if-gtz v0, :cond_d

    .line 1139
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given inputData should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1141
    :cond_d
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_convertData(II[B)Landroid/drm/DrmConvertedStatus;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 347
    :try_start_0
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 348
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 350
    :cond_9
    invoke-virtual {p0}, Landroid/drm/DrmManagerClient;->release()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    .line 352
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 354
    return-void

    .line 352
    :catchall_10
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAvailableDrmEngines()[Ljava/lang/String;
    .registers 6

    .prologue
    .line 430
    iget v4, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v4}, Landroid/drm/DrmManagerClient;->_getAllSupportInfo(I)[Landroid/drm/DrmSupportInfo;

    move-result-object v3

    .line 431
    .local v3, "supportInfos":[Landroid/drm/DrmSupportInfo;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v0, "descriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v4, v3

    if-ge v2, v4, :cond_1b

    .line 434
    aget-object v4, v3, v2

    invoke-virtual {v4}, Landroid/drm/DrmSupportInfo;->getDescriprition()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 437
    :cond_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 438
    .local v1, "drmEngines":[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public getConstraints(Landroid/net/Uri;I)Landroid/content/ContentValues;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "action"    # I

    .prologue
    .line 514
    if-eqz p1, :cond_6

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_e

    .line 515
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_e
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "action"    # I

    .prologue
    .line 452
    if-eqz p1, :cond_10

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v5

    if-nez v5, :cond_18

    .line 453
    :cond_10
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Given usage or path is invalid/null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 457
    :cond_18
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->_checkFDSupporting(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_25

    .line 459
    iget v5, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v5, p1, p2}, Landroid/drm/DrmManagerClient;->_getConstraints(ILjava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 480
    :cond_24
    :goto_24
    return-object v0

    .line 463
    :cond_25
    const/4 v0, 0x0

    .line 464
    .local v0, "contentValues":Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 467
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_27
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_44
    .catchall {:try_start_27 .. :try_end_2c} :catchall_69

    .line 468
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_2c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 469
    .local v2, "fd":Ljava/io/FileDescriptor;
    iget v5, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, p2}, Landroid/drm/DrmManagerClient;->_getConstraints(ILjava/lang/String;I)Landroid/content/ContentValues;
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_39} :catch_75
    .catchall {:try_start_2c .. :try_end_39} :catchall_72

    move-result-object v0

    .line 474
    if-eqz v4, :cond_78

    .line 476
    :try_start_3c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_41

    move-object v3, v4

    .line 477
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_24

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_41
    move-exception v5

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_24

    .line 471
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    :catch_44
    move-exception v1

    .line 472
    .local v1, "e":Ljava/io/IOException;
    :goto_45
    :try_start_45
    const-string v5, "DrmManagerClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception the file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_45 .. :try_end_61} :catchall_69

    .line 474
    if-eqz v3, :cond_24

    .line 476
    :try_start_63
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_24

    .line 477
    :catch_67
    move-exception v5

    goto :goto_24

    .line 474
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_69
    move-exception v5

    :goto_6a
    if-eqz v3, :cond_6f

    .line 476
    :try_start_6c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    .line 477
    :cond_6f
    :goto_6f
    throw v5

    :catch_70
    move-exception v6

    goto :goto_6f

    .line 474
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_72
    move-exception v5

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_6a

    .line 471
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_75
    move-exception v1

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_45

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fd":Ljava/io/FileDescriptor;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :cond_78
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_24
.end method

.method public getDrmObjectType(Landroid/net/Uri;Ljava/lang/String;)I
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 885
    if-eqz p1, :cond_6

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v2, p1, :cond_18

    :cond_6
    if-eqz p2, :cond_10

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 886
    :cond_10
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Uri or the mimetype should be non null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 888
    :cond_18
    const-string v1, ""

    .line 890
    .local v1, "path":Ljava/lang/String;
    :try_start_1a
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_23

    move-result-object v1

    .line 895
    :goto_1e
    invoke-virtual {p0, v1, p2}, Landroid/drm/DrmManagerClient;->getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 891
    :catch_23
    move-exception v0

    .line 893
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DrmManagerClient"

    const-string v3, "Given Uri could not be found in media store"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method public getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 837
    if-eqz p1, :cond_a

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    :cond_a
    if-eqz p2, :cond_14

    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 838
    :cond_14
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Path or the mimetype should be non null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 842
    :cond_1c
    if-eqz p1, :cond_24

    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->_checkFDSupporting(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2b

    .line 844
    :cond_24
    iget v5, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v5, p1, p2}, Landroid/drm/DrmManagerClient;->_getDrmObjectType(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 865
    :cond_2a
    :goto_2a
    return v4

    .line 848
    :cond_2b
    const/4 v4, 0x0

    .line 849
    .local v4, "result":I
    const/4 v2, 0x0

    .line 852
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_2d
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_4a
    .catchall {:try_start_2d .. :try_end_32} :catchall_6f

    .line 853
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_32
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 855
    .local v1, "fd":Ljava/io/FileDescriptor;
    iget v5, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, p2}, Landroid/drm/DrmManagerClient;->_getDrmObjectType(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3f} :catch_7b
    .catchall {:try_start_32 .. :try_end_3f} :catchall_78

    move-result v4

    .line 859
    if-eqz v3, :cond_7e

    .line 861
    :try_start_42
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_47

    move-object v2, v3

    .line 862
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2a

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_47
    move-exception v5

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2a

    .line 856
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :catch_4a
    move-exception v0

    .line 857
    .local v0, "e":Ljava/io/IOException;
    :goto_4b
    :try_start_4b
    const-string v5, "DrmManagerClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception the file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_4b .. :try_end_67} :catchall_6f

    .line 859
    if-eqz v2, :cond_2a

    .line 861
    :try_start_69
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_2a

    .line 862
    :catch_6d
    move-exception v5

    goto :goto_2a

    .line 859
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_6f
    move-exception v5

    :goto_70
    if-eqz v2, :cond_75

    .line 861
    :try_start_72
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    .line 862
    :cond_75
    :goto_75
    throw v5

    :catch_76
    move-exception v6

    goto :goto_75

    .line 859
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_78
    move-exception v5

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_70

    .line 856
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_7b
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_4b

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_7e
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2a
.end method

.method public getMetadata(Landroid/net/Uri;)Landroid/content/ContentValues;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 529
    if-eqz p1, :cond_6

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_e

    .line 530
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_e
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 498
    if-eqz p1, :cond_a

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 499
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given path is invalid/null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_12
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_getMetadata(ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 941
    if-eqz p1, :cond_6

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_e

    .line 942
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 944
    :cond_e
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 906
    if-eqz p1, :cond_a

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 907
    :cond_a
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Given path should be non null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 910
    :cond_12
    const/4 v4, 0x0

    .line 912
    .local v4, "mime":Ljava/lang/String;
    const/4 v2, 0x0

    .line 914
    .local v2, "is":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 915
    .local v0, "fd":Ljava/io/FileDescriptor;
    :try_start_15
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 916
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 917
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_25} :catch_36
    .catchall {:try_start_15 .. :try_end_25} :catchall_3f

    .line 918
    .end local v2    # "is":Ljava/io/FileInputStream;
    .local v3, "is":Ljava/io/FileInputStream;
    :try_start_25
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_4d
    .catchall {:try_start_25 .. :try_end_28} :catchall_4a

    move-result-object v0

    move-object v2, v3

    .line 920
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :cond_2a
    :try_start_2a
    iget v5, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v5, p1, v0}, Landroid/drm/DrmManagerClient;->_getOriginalMimeType(ILjava/lang/String;Ljava/io/FileDescriptor;)Ljava/lang/String;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2f} :catch_36
    .catchall {:try_start_2a .. :try_end_2f} :catchall_3f

    move-result-object v4

    .line 923
    if-eqz v2, :cond_35

    .line 925
    :try_start_32
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_46

    .line 930
    .end local v1    # "file":Ljava/io/File;
    :cond_35
    :goto_35
    return-object v4

    .line 921
    :catch_36
    move-exception v5

    .line 923
    :goto_37
    if-eqz v2, :cond_35

    .line 925
    :try_start_39
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_35

    .line 926
    :catch_3d
    move-exception v5

    goto :goto_35

    .line 923
    :catchall_3f
    move-exception v5

    :goto_40
    if-eqz v2, :cond_45

    .line 925
    :try_start_42
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_48

    .line 926
    :cond_45
    :goto_45
    throw v5

    .restart local v1    # "file":Ljava/io/File;
    :catch_46
    move-exception v5

    goto :goto_35

    .end local v1    # "file":Ljava/io/File;
    :catch_48
    move-exception v6

    goto :goto_45

    .line 923
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catchall_4a
    move-exception v5

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_40

    .line 921
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_4d
    move-exception v5

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_37
.end method

.method public installDrmEngine(Ljava/lang/String;)V
    .registers 5
    .param p1, "engineFilePath"    # Ljava/lang/String;

    .prologue
    .line 569
    if-eqz p1, :cond_a

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 570
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given engineFilePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_29
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_installDrmEngine(ILjava/lang/String;)V

    .line 574
    return-void
.end method

.method public openConvertSession(Ljava/lang/String;)I
    .registers 4
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1118
    if-eqz p1, :cond_a

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1119
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path or the mimeType should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1121
    :cond_12
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_openConvertSession(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public processDrmInfo(Landroid/drm/DrmInfo;)I
    .registers 6
    .param p1, "drmInfo"    # Landroid/drm/DrmInfo;

    .prologue
    .line 643
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/drm/DrmInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_10

    .line 644
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Given drmInfo is invalid/null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 646
    :cond_10
    const/16 v1, -0x7d0

    .line 647
    .local v1, "result":I
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-eqz v2, :cond_27

    .line 648
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3, p1}, Landroid/drm/DrmManagerClient$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 649
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v1, 0x0

    .line 651
    .end local v0    # "msg":Landroid/os/Message;
    :cond_27
    return v1
.end method

.method public release()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 364
    iget-boolean v0, p0, Landroid/drm/DrmManagerClient;->mReleased:Z

    if-eqz v0, :cond_6

    .line 382
    :goto_5
    return-void

    .line 365
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/drm/DrmManagerClient;->mReleased:Z

    .line 367
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-eqz v0, :cond_14

    .line 368
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 369
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    .line 371
    :cond_14
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    if-eqz v0, :cond_1f

    .line 372
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 373
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    .line 375
    :cond_1f
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    .line 376
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    .line 377
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    .line 378
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    .line 379
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    .line 380
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0}, Landroid/drm/DrmManagerClient;->_release(I)V

    .line 381
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    goto :goto_5
.end method

.method public removeAllRights()I
    .registers 5

    .prologue
    .line 1099
    const/16 v1, -0x7d0

    .line 1100
    .local v1, "result":I
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-eqz v2, :cond_17

    .line 1101
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/drm/DrmManagerClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1102
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v1, 0x0

    .line 1104
    .end local v0    # "msg":Landroid/os/Message;
    :cond_17
    return v1
.end method

.method public removeRights(Landroid/net/Uri;)I
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1086
    if-eqz p1, :cond_6

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_e

    .line 1087
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1089
    :cond_e
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->removeRights(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public removeRights(Ljava/lang/String;)I
    .registers 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1042
    if-eqz p1, :cond_a

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1043
    :cond_a
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Given path should be non null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1047
    :cond_12
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->_checkFDSupporting(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1f

    .line 1049
    iget v5, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v5, p1}, Landroid/drm/DrmManagerClient;->_removeRights(ILjava/lang/String;)I

    move-result v4

    .line 1069
    :cond_1e
    :goto_1e
    return v4

    .line 1053
    :cond_1f
    const/4 v4, 0x0

    .line 1054
    .local v4, "result":I
    const/4 v2, 0x0

    .line 1057
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_21
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_3e
    .catchall {:try_start_21 .. :try_end_26} :catchall_63

    .line 1058
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_26
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 1059
    .local v1, "fd":Ljava/io/FileDescriptor;
    iget v5, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Landroid/drm/DrmManagerClient;->_removeRights(ILjava/lang/String;)I
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_33} :catch_6f
    .catchall {:try_start_26 .. :try_end_33} :catchall_6c

    move-result v4

    .line 1063
    if-eqz v3, :cond_72

    .line 1065
    :try_start_36
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3b

    move-object v2, v3

    .line 1066
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1e

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_3b
    move-exception v5

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1e

    .line 1060
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :catch_3e
    move-exception v0

    .line 1061
    .local v0, "e":Ljava/io/IOException;
    :goto_3f
    :try_start_3f
    const-string v5, "DrmManagerClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception the file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_3f .. :try_end_5b} :catchall_63

    .line 1063
    if-eqz v2, :cond_1e

    .line 1065
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_1e

    .line 1066
    :catch_61
    move-exception v5

    goto :goto_1e

    .line 1063
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_63
    move-exception v5

    :goto_64
    if-eqz v2, :cond_69

    .line 1065
    :try_start_66
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    .line 1066
    :cond_69
    :goto_69
    throw v5

    :catch_6a
    move-exception v6

    goto :goto_69

    .line 1063
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_6c
    move-exception v5

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_64

    .line 1060
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_6f
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3f

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_72
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1e
.end method

.method public saveRights(Landroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "drmRights"    # Landroid/drm/DrmRights;
    .param p2, "rightsPath"    # Ljava/lang/String;
    .param p3, "contentPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 552
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/drm/DrmRights;->isValid()Z

    move-result v0

    if-nez v0, :cond_10

    .line 553
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given drmRights or contentPath is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_10
    if-eqz p2, :cond_21

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 556
    invoke-virtual {p1}, Landroid/drm/DrmRights;->getData()[B

    move-result-object v0

    invoke-static {p2, v0}, Landroid/drm/DrmUtils;->writeToFile(Ljava/lang/String;[B)V

    .line 558
    :cond_21
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/drm/DrmManagerClient;->_saveRights(ILandroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized setOnErrorListener(Landroid/drm/DrmManagerClient$OnErrorListener;)V
    .registers 3
    .param p1, "errorListener"    # Landroid/drm/DrmManagerClient$OnErrorListener;

    .prologue
    .line 417
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    .line 418
    if-eqz p1, :cond_8

    .line 419
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createListeners()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 421
    :cond_8
    monitor-exit p0

    return-void

    .line 417
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V
    .registers 3
    .param p1, "eventListener"    # Landroid/drm/DrmManagerClient$OnEventListener;

    .prologue
    .line 404
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    .line 405
    if-eqz p1, :cond_8

    .line 406
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createListeners()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 408
    :cond_8
    monitor-exit p0

    return-void

    .line 404
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOnInfoListener(Landroid/drm/DrmManagerClient$OnInfoListener;)V
    .registers 3
    .param p1, "infoListener"    # Landroid/drm/DrmManagerClient$OnInfoListener;

    .prologue
    .line 391
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    .line 392
    if-eqz p1, :cond_8

    .line 393
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createListeners()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 395
    :cond_8
    monitor-exit p0

    return-void

    .line 391
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
