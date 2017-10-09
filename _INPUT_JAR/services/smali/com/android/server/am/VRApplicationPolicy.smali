.class public Lcom/android/server/am/VRApplicationPolicy;
.super Ljava/lang/Object;
.source "VRApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/VRApplicationPolicy$H;,
        Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final FEATURE_HMT:Z = false

.field private static final TAG:Ljava/lang/String; = "VRApplicationPolicy"

.field private static final VRSERVICE_PACKAGE:Ljava/lang/String; = "com.samsung.android.hmt.vrsvc"

.field private static final VRSETUPWIZARD_PACKAGE:Ljava/lang/String; = "com.samsung.android.app.vrsetupwizard"

.field private static final VRSETUPWIZARD_STUB_PACKAGE:Ljava/lang/String; = "com.samsung.android.app.vrsetupwizardstub"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHMTconnected:Z

.field final mHandler:Lcom/android/server/am/VRApplicationPolicy$H;

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field private mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mVRDevelopMode:Z

.field private mVRSettingsObserver:Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v1, p0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 68
    iput-object v1, p0, Lcom/android/server/am/VRApplicationPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 71
    iput-boolean v0, p0, Lcom/android/server/am/VRApplicationPolicy;->mHMTconnected:Z

    .line 72
    iput-boolean v0, p0, Lcom/android/server/am/VRApplicationPolicy;->mVRDevelopMode:Z

    .line 75
    new-instance v0, Lcom/android/server/am/VRApplicationPolicy$H;

    invoke-direct {v0, p0}, Lcom/android/server/am/VRApplicationPolicy$H;-><init>(Lcom/android/server/am/VRApplicationPolicy;)V

    iput-object v0, p0, Lcom/android/server/am/VRApplicationPolicy;->mHandler:Lcom/android/server/am/VRApplicationPolicy$H;

    .line 78
    iput-object p1, p0, Lcom/android/server/am/VRApplicationPolicy;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 80
    iget-object v0, p2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/VRApplicationPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/VRApplicationPolicy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/VRApplicationPolicy;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/server/am/VRApplicationPolicy;->mHMTconnected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/am/VRApplicationPolicy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/VRApplicationPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/server/am/VRApplicationPolicy;->mHMTconnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/am/VRApplicationPolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/VRApplicationPolicy;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/am/VRApplicationPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/VRApplicationPolicy;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/VRApplicationPolicy;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/VRApplicationPolicy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/VRApplicationPolicy;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/am/VRApplicationPolicy;->comeOutOfVRmodeLocked()V

    return-void
.end method

.method private comeOutOfVRmodeLocked()V
    .registers 3

    .prologue
    .line 221
    const-string v0, "VRApplicationPolicy"

    const-string v1, "comeOutOfVRmode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method private getReasonForCancelingVRActivityLocked(Lcom/android/server/am/ActivityRecord;)Ljava/lang/String;
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vr_setupwizard_completed"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_47

    .line 180
    if-eqz p1, :cond_2c

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v2, "com.samsung.android.app.vrsetupwizardstub"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v2, "com.samsung.android.app.vrsetupwizard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 183
    const-string/jumbo v0, "setup_wizard"

    .line 188
    :cond_2c
    :goto_2c
    if-eqz v0, :cond_46

    .line 189
    const-string v1, "VRApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getReasonForCancelingVRActivity : The reason is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_46
    return-object v0

    .line 185
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/am/VRApplicationPolicy;->isHMTconnected()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 186
    const-string v0, "hmt"

    goto :goto_2c
.end method


# virtual methods
.method adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/ActivityStack;
    .registers 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v5, 0x0

    .line 225
    iget-object v3, p0, Lcom/android/server/am/VRApplicationPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getVRStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 226
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    const-string/jumbo v0, "vr"

    .line 228
    .local v0, "reason":Ljava/lang/String;
    if-nez v1, :cond_2a

    .line 229
    iget-object v3, p0, Lcom/android/server/am/VRApplicationPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/VRApplicationPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(II)I

    move-result v2

    .line 234
    .local v2, "stackId":I
    iget-object v3, p0, Lcom/android/server/am/VRApplicationPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 235
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/am/ActivityStack;->mVRStack:Z

    .line 236
    iget-object v3, p0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowManagerService;->setToVRStack(I)V

    .line 237
    const-string v0, "create vr"

    .line 240
    .end local v2    # "stackId":I
    :cond_2a
    iget-object v3, p0, Lcom/android/server/am/VRApplicationPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 241
    return-object v1
.end method

.method inVRMode()Z
    .registers 3

    .prologue
    .line 245
    iget-object v1, p0, Lcom/android/server/am/VRApplicationPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 246
    .local v0, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isVRActivity()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lcom/android/server/am/VRApplicationPolicy;->isHMTconnected()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 247
    const/4 v1, 0x1

    .line 249
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public isHMTconnected()Z
    .registers 3

    .prologue
    .line 174
    const-string/jumbo v0, "sys.hmt.connected"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public notifyToVRServiceLocked(Landroid/content/Intent;I)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    .line 195
    const-string v0, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 198
    const-string v0, "VRApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send to vr service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/android/server/am/VRApplicationPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 201
    return-void
.end method

.method public readyToStartVRActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z
    .registers 12
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 204
    invoke-direct {p0, p1}, Lcom/android/server/am/VRApplicationPolicy;->getReasonForCancelingVRActivityLocked(Lcom/android/server/am/ActivityRecord;)Ljava/lang/String;

    move-result-object v7

    .line 205
    .local v7, "reason":Ljava/lang/String;
    if-eqz v7, :cond_4a

    .line 206
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.samsung.android.intent.action.CANCEL_LAUNCHING"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v8, "restartIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v5, Landroid/os/UserHandle;

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-direct {v5, v2}, Landroid/os/UserHandle;-><init>(I)V

    move-object v2, p2

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 209
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    const-string/jumbo v0, "reason"

    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string/jumbo v0, "restart_intent"

    invoke-virtual {v8, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 212
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {p0, v8, v0}, Lcom/android/server/am/VRApplicationPolicy;->notifyToVRServiceLocked(Landroid/content/Intent;I)V

    .line 214
    const-string v0, "VRApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not ready to start vr activity by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .end local v6    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v8    # "restartIntent":Landroid/content/Intent;
    :goto_49
    return v1

    :cond_4a
    const/4 v1, 0x1

    goto :goto_49
.end method

.method public startVRHomeLocked(I)Z
    .registers 28
    .param p1, "userId"    # I

    .prologue
    .line 150
    const-string v1, "VRApplicationPolicy"

    const-string/jumbo v3, "start VR Home"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/VRApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "vr_launcher_package"

    invoke-static {v1, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 152
    .local v25, "vrHomeName":Ljava/lang/String;
    if-eqz v25, :cond_8d

    .line 153
    invoke-static/range {v25 .. v25}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v24

    .line 154
    .local v24, "vrHome":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 155
    .local v2, "intent":Landroid/content/Intent;
    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 156
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 159
    .local v7, "aInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v7, :cond_71

    .line 160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, p1

    invoke-virtual {v1, v3, v0}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v5, v2

    invoke-virtual/range {v3 .. v23}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    .line 163
    const/4 v1, 0x1

    .line 170
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v24    # "vrHome":Landroid/content/ComponentName;
    :goto_70
    return v1

    .line 165
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v24    # "vrHome":Landroid/content/ComponentName;
    :cond_71
    const-string v1, "VRApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No VR Home "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v24    # "vrHome":Landroid/content/ComponentName;
    :goto_8b
    const/4 v1, 0x0

    goto :goto_70

    .line 168
    :cond_8d
    const-string v1, "VRApplicationPolicy"

    const-string v3, "VR home is not set"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b
.end method

.method public systemReady()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v0, "dockFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v4, p0, Lcom/android/server/am/VRApplicationPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/am/VRApplicationPolicy$1;

    invoke-direct {v5, p0}, Lcom/android/server/am/VRApplicationPolicy$1;-><init>(Lcom/android/server/am/VRApplicationPolicy;)V

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    const/4 v2, 0x0

    .line 106
    .local v2, "vrDevelopMode":Z
    iget-object v4, p0, Lcom/android/server/am/VRApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 108
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v4, "vrmode_developer_mode"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_40

    const/4 v2, 0x1

    .line 109
    :goto_26
    new-instance v4, Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;

    invoke-direct {v4, p0}, Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;-><init>(Lcom/android/server/am/VRApplicationPolicy;)V

    iput-object v4, p0, Lcom/android/server/am/VRApplicationPolicy;->mVRSettingsObserver:Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;

    .line 110
    const-string/jumbo v4, "vrmode_developer_mode"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/VRApplicationPolicy;->mVRSettingsObserver:Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;

    invoke-virtual {v1, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 113
    iget-object v4, p0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 114
    :try_start_3c
    iput-boolean v2, p0, Lcom/android/server/am/VRApplicationPolicy;->mVRDevelopMode:Z

    .line 115
    monitor-exit v4

    .line 116
    return-void

    :cond_40
    move v2, v3

    .line 108
    goto :goto_26

    .line 115
    :catchall_42
    move-exception v3

    monitor-exit v4
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_42

    throw v3
.end method
