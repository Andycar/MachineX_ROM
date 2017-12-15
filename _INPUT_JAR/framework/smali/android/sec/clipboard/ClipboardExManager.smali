.class public Landroid/sec/clipboard/ClipboardExManager;
.super Ljava/lang/Object;
.source "ClipboardExManager.java"


# static fields
.field public static final DATE:I = 0x1

.field public static final DEFAULT:I = 0x0

.field public static final EMAIL:I = 0x4

.field public static final PHONE_NUMBER:I = 0x3

.field public static final TIME:I = 0x2

.field public static final URL:I = 0x5

.field private static sService:Landroid/sec/clipboard/IClipboardService;


# instance fields
.field private final FAIL_SET_DATA:I

.field private final PROTECTED_DATA_MAX:I

.field private final SUCCESS_AND_SAVE_BITMAP:I

.field private final SUCCESS_SET_DATA:I

.field private final _UNFORMAT:I

.field private mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

.field private mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

.field private mContainerID:I

.field private mContext:Landroid/content/Context;

.field private mFormatid:I

.field private mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

.field private mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

.field private mRegScrapInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

.field private mScrapDataSaving:Z

.field private final mSetDataHandler:Landroid/os/Handler;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 100
    const/4 v0, 0x0

    sput-object v0, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerID"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 98
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegScrapInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 101
    iput v2, p0, Landroid/sec/clipboard/ClipboardExManager;->_UNFORMAT:I

    .line 102
    iput v3, p0, Landroid/sec/clipboard/ClipboardExManager;->SUCCESS_SET_DATA:I

    .line 103
    const/4 v0, 0x1

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->FAIL_SET_DATA:I

    .line 104
    const/4 v0, 0x2

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->SUCCESS_AND_SAVE_BITMAP:I

    .line 105
    const/4 v0, 0x3

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->PROTECTED_DATA_MAX:I

    .line 106
    iput v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    .line 107
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 108
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    .line 109
    iput-boolean v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mScrapDataSaving:Z

    .line 110
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;

    .line 112
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    .line 126
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    .line 145
    new-instance v0, Landroid/sec/clipboard/ClipboardExManager$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/ClipboardExManager$1;-><init>(Landroid/sec/clipboard/ClipboardExManager;)V

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;

    .line 142
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    .line 143
    iput p2, p0, Landroid/sec/clipboard/ClipboardExManager;->mContainerID:I

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 98
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegScrapInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 101
    iput v3, p0, Landroid/sec/clipboard/ClipboardExManager;->_UNFORMAT:I

    .line 102
    iput v2, p0, Landroid/sec/clipboard/ClipboardExManager;->SUCCESS_SET_DATA:I

    .line 103
    const/4 v0, 0x1

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->FAIL_SET_DATA:I

    .line 104
    const/4 v0, 0x2

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->SUCCESS_AND_SAVE_BITMAP:I

    .line 105
    const/4 v0, 0x3

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->PROTECTED_DATA_MAX:I

    .line 106
    iput v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    .line 107
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 108
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    .line 109
    iput-boolean v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mScrapDataSaving:Z

    .line 110
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;

    .line 112
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    .line 126
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    .line 145
    new-instance v0, Landroid/sec/clipboard/ClipboardExManager$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/ClipboardExManager$1;-><init>(Landroid/sec/clipboard/ClipboardExManager;)V

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;

    .line 133
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    .line 134
    iput v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mContainerID:I

    .line 135
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    .line 136
    return-void
.end method

.method static synthetic access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/sec/clipboard/ClipboardExManager;)Landroid/widget/Toast;
    .registers 2
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$102(Landroid/sec/clipboard/ClipboardExManager;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 93
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$200(Landroid/sec/clipboard/ClipboardExManager;ZI)I
    .registers 4
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Landroid/sec/clipboard/ClipboardExManager;->isClipboardAllowed(ZI)I

    move-result v0

    return v0
.end method

.method static synthetic access$300()Landroid/sec/clipboard/IClipboardService;
    .registers 1

    .prologue
    .line 93
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/sec/clipboard/ClipboardExManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Landroid/sec/clipboard/ClipboardExManager;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mScrapDataSaving:Z

    return p1
.end method

.method private checkCurrentMode()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 191
    const/4 v3, 0x0

    .line 193
    .local v3, "packageName":Ljava/lang/String;
    iget-object v7, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_39

    .line 194
    iget-object v7, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 196
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_57

    const-string v7, "android.permission.GET_TASKS"

    iget-object v8, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_57

    .line 198
    :try_start_1d
    iget-object v7, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 199
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 200
    .local v5, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 201
    .local v6, "topActivity":Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_38} :catch_52

    move-result-object v3

    .line 210
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v6    # "topActivity":Landroid/content/ComponentName;
    :cond_39
    :goto_39
    if-eqz v3, :cond_46

    .line 211
    const-string/jumbo v7, "sec_container_1."

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 212
    iput v10, p0, Landroid/sec/clipboard/ClipboardExManager;->mContainerID:I

    .line 218
    :cond_46
    :goto_46
    sget-object v7, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    if-eqz v7, :cond_71

    .line 220
    :try_start_4a
    sget-object v7, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    iget v8, p0, Landroid/sec/clipboard/ClipboardExManager;->mContainerID:I

    invoke-interface {v7, v8}, Landroid/sec/clipboard/IClipboardService;->UpdateClipboardDB(I)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_51} :catch_61

    .line 237
    :cond_51
    :goto_51
    return-void

    .line 202
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_52
    move-exception v2

    .line 203
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39

    .line 206
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_57
    iget-object v7, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_39

    .line 214
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_5e
    iput v9, p0, Landroid/sec/clipboard/ClipboardExManager;->mContainerID:I

    goto :goto_46

    .line 221
    :catch_61
    move-exception v2

    .line 222
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_6d

    const-string v7, "ClipboardServiceEx"

    const-string v8, "UpdateClipboardDB(RemoteException) "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_6d
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_51

    .line 226
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_71
    const-string v7, "clipboardEx"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 227
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v7

    sput-object v7, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    .line 228
    sget-object v7, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    if-eqz v7, :cond_51

    .line 230
    :try_start_81
    sget-object v7, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    iget v8, p0, Landroid/sec/clipboard/ClipboardExManager;->mContainerID:I

    invoke-interface {v7, v8}, Landroid/sec/clipboard/IClipboardService;->UpdateClipboardDB(I)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_88} :catch_89

    goto :goto_51

    .line 231
    :catch_89
    move-exception v2

    .line 232
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_95

    const-string v7, "ClipboardServiceEx"

    const-string v8, "UpdateClipboardDB(RemoteException) "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_95
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_51
.end method

.method private static getService()Landroid/sec/clipboard/IClipboardService;
    .registers 3

    .prologue
    .line 266
    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    if-eqz v1, :cond_7

    .line 267
    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    .line 273
    .local v0, "b":Landroid/os/IBinder;
    :goto_6
    return-object v1

    .line 269
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_7
    const-string v1, "clipboardEx"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 270
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    sput-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    .line 271
    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    if-nez v1, :cond_22

    .line 272
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_22

    const-string v1, "ClipboardServiceEx"

    const-string v2, "Had failed to obtaining clipboardEx service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_22
    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    goto :goto_6
.end method

.method private isClipboardAllowed(ZI)I
    .registers 13
    .param p1, "showToast"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 1213
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_a

    move v0, v7

    .line 1232
    :goto_9
    return v0

    .line 1217
    :cond_a
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1218
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 1219
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isClipboardAllowedAsUser"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1220
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_52

    .line 1222
    :try_start_2e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1223
    const-string v0, "isClipboardAllowedAsUser"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_40
    .catchall {:try_start_2e .. :try_end_40} :catchall_4d

    move-result v0

    if-nez v0, :cond_48

    .line 1227
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_9

    :cond_48
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 1232
    goto :goto_9

    .line 1227
    :catchall_4d
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_52
    move v0, v7

    .line 1230
    goto :goto_9
.end method

.method private startClipboardUIServiceService()V
    .registers 6

    .prologue
    .line 1186
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1187
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.clipboarduiservice"

    const-string v4, "com.samsung.android.clipboarduiservice.ClipboardUIServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1190
    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 1194
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_16
    return-void

    .line 1191
    :catch_17
    move-exception v0

    .line 1192
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting clipboarduiservice service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method private startKeepUIServiceService()V
    .registers 6

    .prologue
    .line 1198
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1199
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.SmartClipService"

    const-string v4, "com.samsung.android.clipboarduiservice.ClipboardUIServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1202
    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 1206
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_16
    return-void

    .line 1203
    :catch_17
    move-exception v0

    .line 1204
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting clipboarduiservice service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method


# virtual methods
.method public AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .registers 6
    .param p1, "listener"    # Landroid/sec/clipboard/IClipboardFormatListener;

    .prologue
    .line 981
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_13

    .line 982
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_11

    const-string v2, "ClipboardServiceEx"

    const-string v3, "AddClipboardFormatListener - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_11
    const/4 v0, 0x0

    .line 995
    :goto_12
    return v0

    .line 986
    :cond_13
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->checkCurrentMode()V

    .line 988
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/clipboard/IClipboardService;->AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result v0

    .local v0, "Result":Z
    goto :goto_12

    .line 989
    .end local v0    # "Result":Z
    :catch_1f
    move-exception v1

    .line 990
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_2b

    const-string v2, "ClipboardServiceEx"

    const-string v3, "AddClipboardFormatListener : "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 993
    const/4 v0, 0x0

    .restart local v0    # "Result":Z
    goto :goto_12
.end method

.method public RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)Z
    .registers 8
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .prologue
    .line 1038
    const/4 v0, 0x0

    .line 1040
    .local v0, "Result":Z
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eq v3, p1, :cond_b

    .line 1041
    :cond_9
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 1043
    :cond_b
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_1e

    .line 1044
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_1c

    const-string v3, "ClipboardServiceEx"

    const-string v4, "RegistClipboardWorkingFormUiInterface - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    move v1, v0

    .line 1065
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_1d
    return v1

    .line 1049
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_1e
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->checkCurrentMode()V

    .line 1052
    :try_start_21
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    invoke-interface {v3, v4}, Landroid/sec/clipboard/IClipboardService;->RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    .line 1053
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_35

    const-string v3, "ClipboardServiceEx"

    const-string v4, "Regist ClipboardWorkingFormUiInterface - Success."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_35} :catch_58

    .line 1055
    :cond_35
    const/4 v0, 0x1

    .line 1062
    :goto_36
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_56

    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RegistClipboardWorkingFormUiInterface - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    move v1, v0

    .line 1065
    .restart local v1    # "Result":I
    goto :goto_1d

    .line 1056
    .end local v1    # "Result":I
    :catch_58
    move-exception v2

    .line 1057
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_64

    const-string v3, "ClipboardServiceEx"

    const-string v4, "RegistClipboardWorkingFormUiInterface : "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_64
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36
.end method

.method public RegistScrapWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)Z
    .registers 8
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .prologue
    .line 1075
    const/4 v0, 0x0

    .line 1077
    .local v0, "Result":Z
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegScrapInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegScrapInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eq v3, p1, :cond_b

    .line 1078
    :cond_9
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegScrapInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 1080
    :cond_b
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_1e

    .line 1081
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_1c

    const-string v3, "ClipboardServiceEx"

    const-string v4, "RegistScrapdWorkingFormUiInterface - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    move v1, v0

    .line 1102
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_1d
    return v1

    .line 1086
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_1e
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->checkCurrentMode()V

    .line 1089
    :try_start_21
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegScrapInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    invoke-interface {v3, v4}, Landroid/sec/clipboard/IClipboardService;->RegistScrapWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    .line 1090
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_35

    const-string v3, "ClipboardServiceEx"

    const-string v4, "Regist ScrapWorkingFormUiInterface - Success."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_35} :catch_58

    .line 1092
    :cond_35
    const/4 v0, 0x1

    .line 1099
    :goto_36
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_56

    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RegistClipboardWorkingFormUiInterface - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    move v1, v0

    .line 1102
    .restart local v1    # "Result":I
    goto :goto_1d

    .line 1093
    .end local v1    # "Result":I
    :catch_58
    move-exception v2

    .line 1094
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_64

    const-string v3, "ClipboardServiceEx"

    const-string v4, "RegistScrapWorkingFormUiInterface : "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :cond_64
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36
.end method

.method public RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .registers 6
    .param p1, "listener"    # Landroid/sec/clipboard/IClipboardFormatListener;

    .prologue
    .line 1011
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_13

    .line 1012
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_11

    const-string v2, "ClipboardServiceEx"

    const-string v3, "RemoveClipboardFormatListener - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    :cond_11
    const/4 v0, 0x0

    .line 1023
    :goto_12
    return v0

    .line 1016
    :cond_13
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/clipboard/IClipboardService;->RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1c

    move-result v0

    .local v0, "Result":Z
    goto :goto_12

    .line 1017
    .end local v0    # "Result":Z
    :catch_1c
    move-exception v1

    .line 1018
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_28

    const-string v2, "ClipboardServiceEx"

    const-string v3, "RemoveClipboardFormatListener : "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_28
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1021
    const/4 v0, 0x0

    .restart local v0    # "Result":Z
    goto :goto_12
.end method

.method public callPasteApplication(Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 5
    .param p1, "clipdata"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 409
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-eqz v1, :cond_34

    .line 411
    :try_start_4
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_16

    .line 412
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_15

    const-string v1, "ClipboardServiceEx"

    const-string v2, "callPasteApplication - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_15
    :goto_15
    return-void

    .line 415
    :cond_16
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/sec/clipboard/IClipboardService;->callPasteMenuFromApp(I)V

    .line 416
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-interface {v1, p1}, Landroid/sec/clipboard/IClipboardDataPasteEvent;->onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_23} :catch_24

    goto :goto_15

    .line 417
    :catch_24
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_30

    const-string v1, "ClipboardServiceEx"

    const-string v2, "Clipboard Service callPasteApplication error : "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    .line 422
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_34
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_15

    const-string v1, "ClipboardServiceEx"

    const-string v2, "Clipboard Service callPasteApplication mPasteEvent == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public callPasteMenuFromApp(I)V
    .registers 5
    .param p1, "enabled"    # I

    .prologue
    .line 375
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_12

    .line 376
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_11

    const-string v1, "ClipboardServiceEx"

    const-string v2, "callPasteMenuFromApp - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_11
    :goto_11
    return-void

    .line 380
    :cond_12
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/clipboard/IClipboardService;->callPasteMenuFromApp(I)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_11

    .line 381
    :catch_1a
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_26

    const-string v1, "ClipboardServiceEx"

    const-string v2, "callPasteMenuFromApp(RemoteException): "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public dismissUIDataDialog()V
    .registers 4

    .prologue
    .line 282
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_12

    .line 283
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_11

    const-string v1, "ClipboardServiceEx"

    const-string v2, "dismissUIDataDialog - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_11
    :goto_11
    return-void

    .line 287
    :cond_12
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardService;->dismissUIDataDialog()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_11

    .line 288
    :catch_1a
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_26

    const-string v1, "ClipboardServiceEx"

    const-string v2, "dismissUIDataDialog(RemoteException): "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public getClipedStrings(II)Ljava/util/ArrayList;
    .registers 7
    .param p1, "metaType"    # I
    .param p2, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1111
    .local v0, "clipboardData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_5
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_18

    .line 1112
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_16

    const-string v2, "ClipboardServiceEx"

    const-string v3, "getClipedStrings - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_16
    const/4 v2, 0x0

    .line 1119
    :goto_17
    return-object v2

    .line 1115
    :cond_18
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/sec/clipboard/IClipboardService;->getClipedStrings(II)Ljava/util/ArrayList;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1f} :catch_22

    move-result-object v0

    :goto_20
    move-object v2, v0

    .line 1119
    goto :goto_17

    .line 1116
    :catch_22
    move-exception v1

    .line 1117
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method

.method public getContainerID()I
    .registers 2

    .prologue
    .line 243
    iget v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContainerID:I

    return v0
.end method

.method public getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "formatid"    # I

    .prologue
    .line 807
    const/4 v0, 0x0

    .line 809
    .local v0, "data":Landroid/sec/clipboard/data/ClipboardData;
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v4

    if-nez v4, :cond_14

    .line 810
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_12

    const-string v4, "ClipboardServiceEx"

    const-string v5, "getData - Fail~ Service is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move-object v1, v0

    .line 828
    .end local v0    # "data":Landroid/sec/clipboard/data/ClipboardData;
    .local v1, "data":Landroid/sec/clipboard/data/ClipboardData;
    :goto_13
    return-object v1

    .line 814
    .end local v1    # "data":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v0    # "data":Landroid/sec/clipboard/data/ClipboardData;
    :cond_14
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->checkCurrentMode()V

    .line 816
    iget v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_36

    move v3, p2

    .line 817
    .local v3, "myFormat":I
    :goto_1d
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/sec/clipboard/IClipboardService;->GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 818
    if-nez v0, :cond_34

    .line 819
    if-eqz p1, :cond_34

    .line 820
    const v4, 0x1040712

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .end local v3    # "myFormat":I
    :cond_34
    :goto_34
    move-object v1, v0

    .line 828
    .end local v0    # "data":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v1    # "data":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_13

    .line 816
    .end local v1    # "data":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v0    # "data":Landroid/sec/clipboard/data/ClipboardData;
    :cond_36
    iget v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_39

    goto :goto_1d

    .line 824
    :catch_39
    move-exception v2

    .line 825
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_45

    const-string v4, "ClipboardServiceEx"

    const-string v5, "getData(int)(RemoteException):"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_45
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

.method public getData(Landroid/content/Context;ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "formatid"    # I
    .param p3, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    .line 930
    const/4 v0, 0x1

    .line 932
    .local v0, "Result":Z
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->startClipboardUIServiceService()V

    .line 933
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_20

    .line 934
    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call getData.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_20
    :try_start_20
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_33

    .line 939
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_31

    .line 940
    const-string v2, "ClipboardServiceEx"

    const-string v3, "getData - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_31
    const/4 v2, 0x0

    .line 961
    :goto_32
    return v2

    .line 945
    :cond_33
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->checkCurrentMode()V

    .line 948
    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-nez v2, :cond_65

    .line 949
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Landroid/sec/clipboard/IClipboardService;->ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 950
    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getdata - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_63
    move v2, v0

    .line 961
    goto :goto_32

    .line 952
    :cond_65
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-interface {v2, v3, v4}, Landroid/sec/clipboard/IClipboardService;->ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 953
    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getdata - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_96} :catch_97

    goto :goto_63

    .line 955
    :catch_97
    move-exception v1

    .line 956
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_a3

    const-string v2, "ClipboardServiceEx"

    const-string v3, "getData(Context,int,IClipboardDataPasteEvent) : "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_a3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 959
    const/4 v0, 0x0

    goto :goto_63
.end method

.method public getDataListSize()I
    .registers 6

    .prologue
    .line 881
    const/4 v1, -0x1

    .line 883
    .local v1, "size":I
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_14

    .line 884
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_12

    const-string v3, "ClipboardServiceEx"

    const-string v4, "getDataListSize - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move v2, v1

    .line 895
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_13
    return v2

    .line 888
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_14
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->checkCurrentMode()V

    .line 890
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/clipboard/IClipboardService;->getDataSize()I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_21

    move-result v1

    :goto_1f
    move v2, v1

    .line 895
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_13

    .line 891
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :catch_21
    move-exception v0

    .line 893
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method public getFrozenState()Z
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-nez v0, :cond_6

    .line 365
    const/4 v0, 0x0

    .line 367
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public getPersonaId()I
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 252
    const/4 v1, 0x0

    .line 253
    .local v1, "packageName":Ljava/lang/String;
    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 254
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 256
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_18

    .line 261
    :goto_17
    return v3

    .line 259
    :cond_18
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v4, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 260
    .local v3, "userId":I
    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPersonaId api current userid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public getPreviewIconXpos()F
    .registers 2

    .prologue
    .line 1128
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    .line 1129
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    if-eqz v0, :cond_13

    .line 1130
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardUIManager;->getPreviewIconXpos()F

    move-result v0

    .line 1132
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getPreviewIconYpos()F
    .registers 2

    .prologue
    .line 1141
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    .line 1142
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    if-eqz v0, :cond_13

    .line 1143
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardUIManager;->getPreviewIconYpos()F

    move-result v0

    .line 1145
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getScrapDataSize()I
    .registers 6

    .prologue
    .line 904
    const/4 v1, -0x1

    .line 906
    .local v1, "size":I
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_14

    .line 907
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_12

    const-string v3, "ClipboardServiceEx"

    const-string v4, "getDataListSize - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move v2, v1

    .line 918
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_13
    return v2

    .line 911
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_14
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->checkCurrentMode()V

    .line 913
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/clipboard/IClipboardService;->getScrapDataNumber()I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_21

    move-result v1

    :goto_1f
    move v2, v1

    .line 918
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_13

    .line 914
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :catch_21
    move-exception v0

    .line 916
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method public hasData(Landroid/content/Context;I)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "formatid"    # I

    .prologue
    .line 839
    const/4 v0, 0x0

    .line 842
    .local v0, "Result":Z
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v4

    if-nez v4, :cond_14

    .line 843
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_12

    const-string v4, "ClipboardServiceEx"

    const-string v5, "hasData - Fail~ Service is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move v1, v0

    .line 862
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_13
    return v1

    .line 847
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_14
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->checkCurrentMode()V

    .line 849
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v4

    invoke-interface {v4}, Landroid/sec/clipboard/IClipboardService;->getDataSize()I

    move-result v4

    if-lez v4, :cond_37

    .line 851
    iget v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_34

    move v3, p2

    .line 852
    .local v3, "myFormat":I
    :goto_27
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/sec/clipboard/IClipboardService;->GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    if-eqz v4, :cond_32

    .line 853
    const/4 v0, 0x1

    .end local v3    # "myFormat":I
    :cond_32
    :goto_32
    move v1, v0

    .line 862
    .restart local v1    # "Result":I
    goto :goto_13

    .line 851
    .end local v1    # "Result":I
    :cond_34
    iget v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_36} :catch_39

    goto :goto_27

    .line 855
    :cond_37
    const/4 v0, 0x0

    goto :goto_32

    .line 857
    :catch_39
    move-exception v2

    .line 858
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_32
.end method

.method public hasDataOf(I)Z
    .registers 3
    .param p1, "formatid"    # I

    .prologue
    .line 872
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/sec/clipboard/ClipboardExManager;->hasData(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public hideUIFloatingIcon()V
    .registers 2

    .prologue
    .line 1167
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->startKeepUIServiceService()V

    .line 1168
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    .line 1169
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    if-eqz v0, :cond_14

    .line 1170
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardUIManager;->hideFloatingIconForScrap()V

    .line 1172
    :cond_14
    return-void
.end method

.method public isShowing()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 432
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_13

    .line 433
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_12

    const-string v2, "ClipboardServiceEx"

    const-string v3, "isShowing - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_12
    :goto_12
    return v1

    .line 437
    :cond_13
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardService;->IsShowUIClipboardData()Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1c

    move-result v1

    goto :goto_12

    .line 438
    :catch_1c
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public iscalledPasteMenuFromApp()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 392
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_13

    .line 393
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_12

    const-string v2, "ClipboardServiceEx"

    const-string v3, "iscalledPasteMenuFromApp - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_12
    :goto_12
    return v1

    .line 397
    :cond_13
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardService;->iscalledPasteMenuFromApp()Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1c

    move-result v1

    goto :goto_12

    .line 398
    :catch_1c
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_28

    const-string v2, "ClipboardServiceEx"

    const-string v3, "iscalledPasteMenuFromApp(RemoteException): "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_28
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public sendCropRect(Landroid/graphics/Rect;Z)V
    .registers 4
    .param p1, "cropRect"    # Landroid/graphics/Rect;
    .param p2, "showAni"    # Z

    .prologue
    .line 1178
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    .line 1179
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    if-eqz v0, :cond_11

    .line 1180
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    invoke-virtual {v0, p1, p2}, Landroid/sec/clipboard/ClipboardUIManager;->sendCropRectForAnimation(Landroid/graphics/Rect;Z)V

    .line 1182
    :cond_11
    return-void
.end method

.method public setData(Landroid/content/Context;Landroid/content/ClipData;Z)Z
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/ClipData;
    .param p3, "setPrimary"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 650
    const/4 v2, 0x0

    .line 653
    .local v2, "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-static {p1}, Landroid/sec/clipboard/ClipboardConverter;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardConverter;

    move-result-object v9

    iput-object v9, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    .line 654
    iget-object v9, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    invoke-virtual {v9, p2}, Landroid/sec/clipboard/ClipboardConverter;->ClipDataToClipbaordData(Landroid/content/ClipData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 656
    if-nez v2, :cond_12

    .line 726
    :cond_11
    :goto_11
    return v7

    .line 660
    :cond_12
    move-object v1, v2

    .line 661
    .local v1, "clipData":Landroid/sec/clipboard/data/ClipboardData;
    move v5, p3

    .line 663
    .local v5, "setPrimaryData":Z
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    .line 665
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v9

    if-nez v9, :cond_29

    .line 666
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_11

    const-string v8, "ClipboardServiceEx"

    const-string/jumbo v9, "setData - Fail~ Service is null."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 670
    :cond_29
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->checkCurrentMode()V

    .line 671
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->getContainerID()I

    move-result v7

    if-ne v7, v8, :cond_3b

    .line 672
    if-eqz v1, :cond_3b

    .line 673
    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v7

    packed-switch v7, :pswitch_data_6c

    .line 690
    :cond_3b
    :goto_3b
    new-instance v4, Ljava/lang/Thread;

    new-instance v7, Landroid/sec/clipboard/ClipboardExManager$4;

    invoke-direct {v7, p0, v5, v1}, Landroid/sec/clipboard/ClipboardExManager$4;-><init>(Landroid/sec/clipboard/ClipboardExManager;ZLandroid/sec/clipboard/data/ClipboardData;)V

    invoke-direct {v4, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 725
    .local v4, "setDataThread":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    move v7, v8

    .line 726
    goto :goto_11

    .end local v4    # "setDataThread":Ljava/lang/Thread;
    :pswitch_4a
    move-object v6, v1

    .line 675
    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 676
    .local v6, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    if-eqz v6, :cond_3b

    .line 677
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v3

    .line 678
    .local v3, "imagePath":Ljava/lang/String;
    if-eqz v3, :cond_3b

    const-string v7, "/data/user/0/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 679
    const-string v7, "/data/user/0/"

    const-string v9, "/data/data1/"

    invoke-virtual {v3, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .local v0, "changePath":Ljava/lang/String;
    move-object v7, v1

    .line 680
    check-cast v7, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-virtual {v7, v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmapPath(Ljava/lang/String;)Z

    goto :goto_3b

    .line 673
    :pswitch_data_6c
    .packed-switch 0x3
        :pswitch_4a
    .end packed-switch
.end method

.method public setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 495
    if-eqz p2, :cond_23

    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_23

    .line 496
    iget-boolean v7, p0, Landroid/sec/clipboard/ClipboardExManager;->mScrapDataSaving:Z

    if-ne v7, v6, :cond_21

    .line 497
    iget-object v6, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    const v7, 0x1040813

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;

    .line 498
    iget-object v6, p0, Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 573
    :cond_20
    :goto_20
    return v5

    .line 502
    :cond_21
    iput-boolean v6, p0, Landroid/sec/clipboard/ClipboardExManager;->mScrapDataSaving:Z

    .line 505
    :cond_23
    move-object v1, p2

    .line 506
    .local v1, "clipData":Landroid/sec/clipboard/data/ClipboardData;
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    .line 508
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v7

    if-nez v7, :cond_39

    .line 509
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_20

    const-string v6, "ClipboardServiceEx"

    const-string/jumbo v7, "setData - Fail~ Service is null."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 512
    :cond_39
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->checkCurrentMode()V

    .line 513
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->getContainerID()I

    move-result v5

    if-ne v5, v6, :cond_4b

    .line 514
    if-eqz v1, :cond_4b

    .line 515
    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v5

    packed-switch v5, :pswitch_data_7c

    .line 532
    :cond_4b
    :goto_4b
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Landroid/sec/clipboard/ClipboardExManager$2;

    invoke-direct {v5, p0, v1}, Landroid/sec/clipboard/ClipboardExManager$2;-><init>(Landroid/sec/clipboard/ClipboardExManager;Landroid/sec/clipboard/data/ClipboardData;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 572
    .local v3, "setDataThread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    move v5, v6

    .line 573
    goto :goto_20

    .end local v3    # "setDataThread":Ljava/lang/Thread;
    :pswitch_5a
    move-object v4, v1

    .line 517
    check-cast v4, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 518
    .local v4, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    if-eqz v4, :cond_4b

    .line 519
    invoke-virtual {v4}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v2

    .line 520
    .local v2, "imagePath":Ljava/lang/String;
    if-eqz v2, :cond_4b

    const-string v5, "/data/user/0/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 521
    const-string v5, "/data/user/0/"

    const-string v7, "/data/data1/"

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .local v0, "changePath":Ljava/lang/String;
    move-object v5, v1

    .line 522
    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-virtual {v5, v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmapPath(Ljava/lang/String;)Z

    goto :goto_4b

    .line 515
    :pswitch_data_7c
    .packed-switch 0x3
        :pswitch_5a
    .end packed-switch
.end method

.method public setDataWithoutNoti(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 580
    if-eqz p2, :cond_23

    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_23

    .line 581
    iget-boolean v7, p0, Landroid/sec/clipboard/ClipboardExManager;->mScrapDataSaving:Z

    if-ne v7, v6, :cond_21

    .line 582
    iget-object v6, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    const v7, 0x1040813

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;

    .line 583
    iget-object v6, p0, Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 638
    :cond_20
    :goto_20
    return v5

    .line 587
    :cond_21
    iput-boolean v6, p0, Landroid/sec/clipboard/ClipboardExManager;->mScrapDataSaving:Z

    .line 590
    :cond_23
    move-object v1, p2

    .line 591
    .local v1, "clipData":Landroid/sec/clipboard/data/ClipboardData;
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    .line 593
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v7

    if-nez v7, :cond_39

    .line 594
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_20

    const-string v6, "ClipboardServiceEx"

    const-string/jumbo v7, "setData - Fail~ Service is null."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 597
    :cond_39
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->checkCurrentMode()V

    .line 598
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->getContainerID()I

    move-result v5

    if-ne v5, v6, :cond_4b

    .line 599
    if-eqz v1, :cond_4b

    .line 600
    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v5

    packed-switch v5, :pswitch_data_7c

    .line 617
    :cond_4b
    :goto_4b
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Landroid/sec/clipboard/ClipboardExManager$3;

    invoke-direct {v5, p0, v1}, Landroid/sec/clipboard/ClipboardExManager$3;-><init>(Landroid/sec/clipboard/ClipboardExManager;Landroid/sec/clipboard/data/ClipboardData;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 637
    .local v3, "setDataThread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    move v5, v6

    .line 638
    goto :goto_20

    .end local v3    # "setDataThread":Ljava/lang/Thread;
    :pswitch_5a
    move-object v4, v1

    .line 602
    check-cast v4, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 603
    .local v4, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    if-eqz v4, :cond_4b

    .line 604
    invoke-virtual {v4}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v2

    .line 605
    .local v2, "imagePath":Ljava/lang/String;
    if-eqz v2, :cond_4b

    const-string v5, "/data/user/0/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 606
    const-string v5, "/data/user/0/"

    const-string v7, "/data/data1/"

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .local v0, "changePath":Ljava/lang/String;
    move-object v5, v1

    .line 607
    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-virtual {v5, v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmapPath(Ljava/lang/String;)Z

    goto :goto_4b

    .line 600
    :pswitch_data_7c
    .packed-switch 0x3
        :pswitch_5a
    .end packed-switch
.end method

.method public setDataWithoutSendingOrginalClipboard(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v6, 0x1

    .line 737
    move-object v1, p2

    .line 738
    .local v1, "clipData":Landroid/sec/clipboard/data/ClipboardData;
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    .line 740
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v5

    if-nez v5, :cond_18

    .line 741
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_16

    const-string v5, "ClipboardServiceEx"

    const-string/jumbo v6, "setData - Fail~ Service is null."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_16
    const/4 v5, 0x0

    .line 795
    :goto_17
    return v5

    .line 745
    :cond_18
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->checkCurrentMode()V

    .line 746
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->getContainerID()I

    move-result v5

    if-ne v5, v6, :cond_2a

    .line 747
    if-eqz v1, :cond_2a

    .line 748
    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v5

    packed-switch v5, :pswitch_data_5c

    .line 765
    :cond_2a
    :goto_2a
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Landroid/sec/clipboard/ClipboardExManager$5;

    invoke-direct {v5, p0, v1}, Landroid/sec/clipboard/ClipboardExManager$5;-><init>(Landroid/sec/clipboard/ClipboardExManager;Landroid/sec/clipboard/data/ClipboardData;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 794
    .local v3, "setDataThread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    move v5, v6

    .line 795
    goto :goto_17

    .end local v3    # "setDataThread":Ljava/lang/Thread;
    :pswitch_39
    move-object v4, v1

    .line 750
    check-cast v4, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 751
    .local v4, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    if-eqz v4, :cond_2a

    .line 752
    invoke-virtual {v4}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v2

    .line 753
    .local v2, "imagePath":Ljava/lang/String;
    if-eqz v2, :cond_2a

    const-string v5, "/data/user/0/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 754
    const-string v5, "/data/user/0/"

    const-string v7, "/data/data1/"

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .local v0, "changePath":Ljava/lang/String;
    move-object v5, v1

    .line 755
    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-virtual {v5, v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmapPath(Ljava/lang/String;)Z

    goto :goto_2a

    .line 748
    nop

    :pswitch_data_5c
    .packed-switch 0x3
        :pswitch_39
    .end packed-switch
.end method

.method public setPasteFrozen(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 6
    .param p1, "formatid"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    .line 341
    iget v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    if-eq v0, p1, :cond_7

    .line 342
    invoke-virtual {p0, p1, p2}, Landroid/sec/clipboard/ClipboardExManager;->updateData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 345
    :cond_7
    iput p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    .line 346
    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 347
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_28

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPasteFrozen - Format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_28
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_47

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPasteFrozen - mPasteEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_47
    return-void
.end method

.method public setThawPaste()V
    .registers 3

    .prologue
    .line 355
    const/4 v0, -0x1

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 357
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_12

    const-string v0, "ClipboardServiceEx"

    const-string/jumbo v1, "setThawPaste"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_12
    return-void
.end method

.method public showUIDataDialog()V
    .registers 4

    .prologue
    .line 298
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->startClipboardUIServiceService()V

    .line 300
    :try_start_3
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_16

    .line 301
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_15

    const-string v1, "ClipboardServiceEx"

    const-string/jumbo v2, "showUIDataDialog - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_15
    :goto_15
    return-void

    .line 305
    :cond_16
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardService;->showUIDataDialog()V

    .line 307
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v1

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    .line 308
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    if-eqz v1, :cond_15

    .line 309
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardUIManager;->getPreviewIconXpos()F
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2e} :catch_2f

    goto :goto_15

    .line 311
    :catch_2f
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_3c

    const-string v1, "ClipboardServiceEx"

    const-string/jumbo v2, "showUIDataDialog(RemoteException): "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public showUIFloatingIcon()V
    .registers 2

    .prologue
    .line 1154
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->startKeepUIServiceService()V

    .line 1155
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    .line 1156
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    if-eqz v0, :cond_14

    .line 1157
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardUIManager;->showFloatingIconForScrap()V

    .line 1159
    :cond_14
    return-void
.end method

.method public unRegistClipboardWorkingFormUiInterface()V
    .registers 4

    .prologue
    .line 322
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_13

    .line 323
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_12

    const-string v1, "ClipboardServiceEx"

    const-string/jumbo v2, "unRegistClipboardWorkingFormUiInterface - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_12
    :goto_12
    return-void

    .line 327
    :cond_13
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardService;->unRegistClipboardWorkingFormUiInterface()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_12

    .line 328
    :catch_1b
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_28

    const-string v1, "ClipboardServiceEx"

    const-string/jumbo v2, "unRegistClipboardWorkingFormUiInterface(RemoteException): "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_28
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public updateData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 7
    .param p1, "formatid"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    .line 461
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-eqz v1, :cond_22

    .line 462
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_21

    .line 463
    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateData return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_21
    :goto_21
    return-void

    .line 468
    :cond_22
    :try_start_22
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_57

    .line 469
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_21

    const-string v1, "ClipboardServiceEx"

    const-string/jumbo v2, "updateData - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_34} :catch_35

    goto :goto_21

    .line 480
    :catch_35
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_53

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateData(formatid)(RemoteException): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21

    .line 473
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_57
    :try_start_57
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 474
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/sec/clipboard/IClipboardService;->UpdateUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 475
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_21

    .line 476
    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateData - clPasteEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_81} :catch_35

    goto :goto_21
.end method
