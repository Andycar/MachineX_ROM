.class Lcom/android/server/am/AppPermissionManagedDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppPermissionManagedDialog.java"


# static fields
.field private static final CONTINUE:I = 0x0

.field private static final FORCE_QUIT:I = 0x1

.field private static final GETMSGBYAPP:I = 0x2

.field private static final LANCHSETTINGS:I = 0x3

.field private static final TYPE_APPSTART_WARNING:I = 0x0

.field private static final TYPE_PERMISSION_ERROR:I = 0x1


# instance fields
.field private DialogMessage:Ljava/lang/String;

.field private FunctionDisable:Ljava/lang/String;

.field private mAppName:Ljava/lang/String;

.field private mCMAppName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialogType:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsUPSM:Z

.field private mMessageByApp:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPermission:Ljava/lang/String;

.field private mPermissionListName:Ljava/lang/String;

.field private mPermissions:[Ljava/lang/String;

.field private mProc:Lcom/android/server/am/ProcessRecord;

.field private mResource:Landroid/content/res/Resources;

.field private mResult:Lcom/android/server/am/AppErrorResult;

.field private mTitleByApp:Ljava/lang/String;

.field private newIntent:Landroid/content/Intent;

.field private permission_list_user:[Ljava/lang/String;

.field private sPermissionList:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/android/server/am/AppErrorResult;
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "permission"    # Ljava/lang/String;
    .param p5, "packagename"    # Ljava/lang/String;
    .param p6, "isUPSM"    # Z

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    .line 58
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->newIntent:Landroid/content/Intent;

    .line 59
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;

    .line 60
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;

    .line 61
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    .line 62
    const-string v8, "Permission manager"

    iput-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    .line 63
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermissions:[Ljava/lang/String;

    .line 64
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    .line 65
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPackageName:Ljava/lang/String;

    .line 66
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    .line 69
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 70
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 72
    const/16 v8, 0xe

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "android.permission.CALL_PHONE"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "android.permission.READ_CALL_LOG"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "android.permission.WRITE_CALL_LOG"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "android.permission.READ_CONTACTS"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "android.permission.WRITE_CONTACTS"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-string v10, "android.permission.SEND_SMS"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string v10, "android.permission.SEND_MMS"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const-string v10, "android.permission.READ_SMS"

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string v10, "android.permission.WRITE_SMS"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    const-string v10, "android.permission.CAMERA"

    aput-object v10, v8, v9

    const/16 v9, 0xa

    const-string v10, "android.permission.RECORD_AUDIO"

    aput-object v10, v8, v9

    const/16 v9, 0xb

    const-string v10, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v10, v8, v9

    const/16 v9, 0xc

    const-string v10, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v10, v8, v9

    const/16 v9, 0xd

    const-string v10, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    aput-object v10, v8, v9

    iput-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->sPermissionList:[Ljava/lang/String;

    .line 83
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->permission_list_user:[Ljava/lang/String;

    .line 84
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->FunctionDisable:Ljava/lang/String;

    .line 85
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->DialogMessage:Ljava/lang/String;

    .line 86
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermissionListName:Ljava/lang/String;

    .line 88
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mIsUPSM:Z

    .line 290
    new-instance v8, Lcom/android/server/am/AppPermissionManagedDialog$1;

    invoke-direct {v8, p0}, Lcom/android/server/am/AppPermissionManagedDialog$1;-><init>(Lcom/android/server/am/AppPermissionManagedDialog;)V

    iput-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;

    .line 129
    const-string v8, "AppPermissionManagedDialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isUPSM : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mIsUPSM:Z

    .line 131
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I

    .line 132
    iput-object p1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    .line 135
    iput-object p3, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 136
    iput-object p2, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 138
    const/4 v7, 0x0

    .line 139
    .local v7, "tmp_name":Ljava/lang/CharSequence;
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPackageName:Ljava/lang/String;

    .line 141
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, "isChinaNal":Ljava/lang/String;
    iget-object v8, p3, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1cc

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, "name":Ljava/lang/CharSequence;
    if-eqz v6, :cond_1cc

    .line 145
    :try_start_e1
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    .line 147
    if-eqz v5, :cond_1a8

    const-string v8, "ChinaNalSecurity"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a8

    .line 148
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    .line 153
    :goto_f5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.android.app.capabilitymanager"

    const/16 v10, 0x80

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 154
    .local v1, "CMInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;
    :try_end_10f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e1 .. :try_end_10f} :catch_1be

    .line 177
    .end local v1    # "CMInfo":Landroid/content/pm/ApplicationInfo;
    :goto_10f
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x100

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 178
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const-string v9, "Error"

    invoke-virtual {v8, v9}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/am/AppPermissionManagedDialog;->setCancelable(Z)V

    .line 185
    if-eqz v5, :cond_23b

    const-string v8, "ChinaNalSecurity"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23b

    .line 186
    iget-object v8, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    const v9, 0xf4240

    if-ge v8, v9, :cond_13c

    iget-boolean v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mIsUPSM:Z

    if-eqz v8, :cond_212

    .line 187
    :cond_13c
    const/4 v8, -0x1

    iget-object v9, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v10, 0x10404f6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/server/am/AppPermissionManagedDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 190
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mIsUPSM:Z

    .line 206
    :goto_153
    invoke-direct {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->setTitleAndMessage()V

    .line 207
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 208
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Application Error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v8, v8, 0x110

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 211
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 212
    iget-boolean v8, p3, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v8, :cond_192

    .line 213
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7da

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 217
    :cond_192
    const-string v8, "com.samsung.android.service.aircommand"

    iget-object v9, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 218
    .local v4, "isAirCommandService":Z
    if-eqz v4, :cond_1a7

    .line 219
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7da

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 222
    :cond_1a7
    return-void

    .line 150
    .end local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "isAirCommandService":Z
    :cond_1a8
    :try_start_1a8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x80

    move-object/from16 v0, p4

    invoke-virtual {v8, v0, v9}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/PermissionInfo;->labelRes:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;
    :try_end_1bc
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a8 .. :try_end_1bc} :catch_1be

    goto/16 :goto_f5

    .line 155
    :catch_1be
    move-exception v3

    .line 156
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    .line 157
    const-string v8, "Permission manager"

    iput-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    .line 158
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_10f

    .line 161
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "name":Ljava/lang/CharSequence;
    :cond_1cc
    iget-object v6, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 163
    .restart local v6    # "name":Ljava/lang/CharSequence;
    :try_start_1ce
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x80

    move-object/from16 v0, p4

    invoke-virtual {v8, v0, v9}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/PermissionInfo;->labelRes:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.android.app.capabilitymanager"

    const/16 v10, 0x80

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 167
    .restart local v1    # "CMInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;
    :try_end_202
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1ce .. :try_end_202} :catch_204

    goto/16 :goto_10f

    .line 169
    .end local v1    # "CMInfo":Landroid/content/pm/ApplicationInfo;
    :catch_204
    move-exception v3

    .line 170
    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    .line 171
    const-string v8, "Permission manager"

    iput-object v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    .line 172
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_10f

    .line 192
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_212
    const/4 v8, -0x2

    iget-object v9, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const/high16 v10, 0x1040000

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/server/am/AppPermissionManagedDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 195
    const/4 v8, -0x1

    iget-object v9, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v10, 0x10407d4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/server/am/AppPermissionManagedDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    goto/16 :goto_153

    .line 201
    :cond_23b
    const/4 v8, -0x1

    iget-object v9, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v10, 0x10404f6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/server/am/AppPermissionManagedDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    goto/16 :goto_153
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;[Ljava/lang/String;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    .line 58
    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->newIntent:Landroid/content/Intent;

    .line 59
    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;

    .line 60
    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;

    .line 61
    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    .line 62
    const-string v3, "Permission manager"

    iput-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    .line 63
    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermissions:[Ljava/lang/String;

    .line 64
    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    .line 65
    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPackageName:Ljava/lang/String;

    .line 66
    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    .line 69
    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 70
    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 72
    const/16 v3, 0xe

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "android.permission.CALL_PHONE"

    aput-object v4, v3, v7

    const-string v4, "android.permission.READ_CALL_LOG"

    aput-object v4, v3, v8

    const/4 v4, 0x2

    const-string v5, "android.permission.WRITE_CALL_LOG"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "android.permission.READ_CONTACTS"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "android.permission.WRITE_CONTACTS"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "android.permission.SEND_SMS"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "android.permission.SEND_MMS"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "android.permission.READ_SMS"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "android.permission.WRITE_SMS"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "android.permission.CAMERA"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "android.permission.RECORD_AUDIO"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog;->sPermissionList:[Ljava/lang/String;

    .line 83
    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->permission_list_user:[Ljava/lang/String;

    .line 84
    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->FunctionDisable:Ljava/lang/String;

    .line 85
    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->DialogMessage:Ljava/lang/String;

    .line 86
    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermissionListName:Ljava/lang/String;

    .line 88
    iput-boolean v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mIsUPSM:Z

    .line 290
    new-instance v3, Lcom/android/server/am/AppPermissionManagedDialog$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/AppPermissionManagedDialog$1;-><init>(Lcom/android/server/am/AppPermissionManagedDialog;)V

    iput-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;

    .line 94
    iput v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I

    .line 95
    iput-object p1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    .line 98
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog;->newIntent:Landroid/content/Intent;

    .line 99
    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog;->newIntent:Landroid/content/Intent;

    const-string/jumbo v4, "sec_wdlg_newIntent_touch"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    iput-object p4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermissions:[Ljava/lang/String;

    .line 104
    :try_start_9c
    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 105
    .local v1, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    .line 107
    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.capabilitymanager"

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 108
    .local v0, "CMInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;
    :try_end_d6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9c .. :try_end_d6} :catch_102

    .line 115
    .end local v0    # "CMInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appinfo":Landroid/content/pm/ApplicationInfo;
    :goto_d6
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 116
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const-string v4, "Warning"

    invoke-virtual {v3, v4}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p0, v7}, Lcom/android/server/am/AppPermissionManagedDialog;->setCancelable(Z)V

    .line 119
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v5, 0x104000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/am/AppPermissionManagedDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 123
    invoke-direct {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->setTitleAndMessage()V

    .line 125
    return-void

    .line 110
    :catch_102
    move-exception v2

    .line 111
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object p2, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    .line 112
    const-string v3, "Permission manager"

    iput-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    goto :goto_d6
.end method

.method static synthetic access$000(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->newIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/AppPermissionManagedDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/AppErrorResult;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/AppPermissionManagedDialog;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->setTitleAndMessageByApp()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/AppPermissionManagedDialog;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppPermissionManagedDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private setTitleAndMessage()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 225
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 226
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppPermissionManagedDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppPermissionManagedDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 281
    :cond_15
    :goto_15
    return-void

    .line 229
    :cond_16
    iget v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I

    if-nez v1, :cond_4a

    .line 230
    const-string v1, "Warning"

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppPermissionManagedDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can be terminated suddenly. Because some of permission are managed by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\nIf you want more detiled information, please go to the"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppPermissionManagedDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 232
    :cond_4a
    iget v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I

    if-ne v1, v5, :cond_15

    .line 234
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->sPermissionList:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->permission_list_user:[Ljava/lang/String;

    .line 236
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->permission_list_user:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v3, 0x10407d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 238
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->permission_list_user:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v3, 0x10407d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 240
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->permission_list_user:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v3, 0x10407d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 242
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->permission_list_user:[Ljava/lang/String;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v4, 0x10407d8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 244
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->permission_list_user:[Ljava/lang/String;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v4, 0x10407d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 246
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->permission_list_user:[Ljava/lang/String;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v4, 0x10407da

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 248
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->permission_list_user:[Ljava/lang/String;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v4, 0x10407db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 250
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->permission_list_user:[Ljava/lang/String;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v4, 0x10407dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 252
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->permission_list_user:[Ljava/lang/String;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v4, 0x10407dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 254
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->permission_list_user:[Ljava/lang/String;

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v4, 0x10407de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 256
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->permission_list_user:[Ljava/lang/String;

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v4, 0x10407df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 258
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->permission_list_user:[Ljava/lang/String;

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v4, 0x10407e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 260
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->permission_list_user:[Ljava/lang/String;

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v4, 0x10407e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 262
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->permission_list_user:[Ljava/lang/String;

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v4, 0x10407e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 265
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v2, 0x10407e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->FunctionDisable:Ljava/lang/String;

    .line 267
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_128
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->sPermissionList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_13f

    .line 268
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->sPermissionList:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_160

    .line 269
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->permission_list_user:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermissionListName:Ljava/lang/String;

    .line 274
    :cond_13f
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v2, 0x10407e4

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermissionListName:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->DialogMessage:Ljava/lang/String;

    .line 276
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->FunctionDisable:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppPermissionManagedDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->DialogMessage:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppPermissionManagedDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_15

    .line 267
    :cond_160
    add-int/lit8 v0, v0, 0x1

    goto :goto_128
.end method

.method private setTitleAndMessageByApp()V
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 285
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionManagedDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionManagedDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 288
    :cond_12
    return-void
.end method
