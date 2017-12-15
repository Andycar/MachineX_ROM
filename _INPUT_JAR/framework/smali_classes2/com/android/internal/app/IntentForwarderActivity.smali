.class public Lcom/android/internal/app/IntentForwarderActivity;
.super Landroid/app/Activity;
.source "IntentForwarderActivity.java"


# static fields
.field public static FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

.field public static FORWARD_INTENT_TO_USER_OWNER:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;


# instance fields
.field private final TARGET_USER_ID_DEFAULT_VALUE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-string v0, "IntentForwarderActivity"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    .line 54
    const-string v0, "com.android.internal.app.ForwardIntentToUserOwner"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_USER_OWNER:Ljava/lang/String;

    .line 57
    const-string v0, "com.android.internal.app.ForwardIntentToManagedProfile"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->TARGET_USER_ID_DEFAULT_VALUE:I

    return-void
.end method

.method private getManagedProfile()Landroid/os/UserHandle;
    .registers 8

    .prologue
    .line 184
    const-string/jumbo v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 185
    .local v3, "userManager":Landroid/os/UserManager;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 186
    .local v1, "relatedUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 187
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v4, Landroid/os/UserHandle;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 191
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_2b
    return-object v4

    .line 189
    :cond_2c
    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has been called, but there is no managed profile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v4, 0x0

    goto :goto_2b
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 27
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 69
    .local v8, "intentReceived":Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "className":Ljava/lang/String;
    const-string v22, "crossProfileTargetUserId"

    const/16 v23, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 79
    .local v17, "targetUserId":I
    sget-object v22, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_USER_OWNER:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_30

    .line 80
    const v21, 0x1040544

    .line 81
    .local v21, "userMessageId":I
    sget-object v19, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 95
    .local v19, "userDest":Landroid/os/UserHandle;
    :goto_2a
    if-nez v19, :cond_77

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 174
    :goto_2f
    return-void

    .line 82
    .end local v19    # "userDest":Landroid/os/UserHandle;
    .end local v21    # "userMessageId":I
    :cond_30
    sget-object v22, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_54

    .line 83
    const v21, 0x1040545

    .line 85
    .restart local v21    # "userMessageId":I
    const/16 v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_4f

    .line 86
    new-instance v19, Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .restart local v19    # "userDest":Landroid/os/UserHandle;
    goto :goto_2a

    .line 89
    .end local v19    # "userDest":Landroid/os/UserHandle;
    :cond_4f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getManagedProfile()Landroid/os/UserHandle;

    move-result-object v19

    .restart local v19    # "userDest":Landroid/os/UserHandle;
    goto :goto_2a

    .line 91
    .end local v19    # "userDest":Landroid/os/UserHandle;
    .end local v21    # "userMessageId":I
    :cond_54
    sget-object v22, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-class v24, Lcom/android/internal/app/IntentForwarderActivity;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " cannot be called directly"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/16 v21, -0x1

    .line 93
    .restart local v21    # "userMessageId":I
    const/16 v19, 0x0

    .restart local v19    # "userDest":Landroid/os/UserHandle;
    goto :goto_2a

    .line 99
    :cond_77
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 100
    .local v12, "newIntent":Landroid/content/Intent;
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 102
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const/high16 v22, 0x3000000

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v3

    .line 107
    .local v3, "callingUserId":I
    const/4 v7, 0x0

    .line 108
    .local v7, "forwardfromKnox":Z
    const/16 v22, 0x64

    move/from16 v0, v22

    if-lt v3, v0, :cond_9d

    .line 109
    const/4 v7, 0x1

    .line 112
    :cond_9d
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 113
    .local v9, "ipm":Landroid/content/pm/IPackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v13

    .line 114
    .local v13, "resolvedType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 115
    .local v4, "canForward":Z
    invoke-virtual {v12}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v15

    .line 116
    .local v15, "selector":Landroid/content/Intent;
    if-nez v15, :cond_b3

    .line 117
    move-object v15, v12

    .line 120
    :cond_b3
    :try_start_b3
    invoke-virtual/range {v19 .. v19}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v9, v15, v13, v3, v0}, Landroid/content/pm/IPackageManager;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_b3 .. :try_end_bc} :catch_149

    move-result v4

    .line 125
    :goto_bd
    if-eqz v4, :cond_1c7

    .line 126
    invoke-virtual {v12, v3}, Landroid/content/Intent;->setContentUserHint(I)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    const/high16 v23, 0x10000

    invoke-virtual/range {v19 .. v19}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    .line 132
    .local v14, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v22, v0

    const/16 v23, 0x3e8

    invoke-static/range {v22 .. v23}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v22

    if-nez v22, :cond_153

    const/16 v16, 0x1

    .line 136
    .local v16, "shouldShowDisclosure":Z
    :goto_f0
    const/16 v22, 0x0

    :try_start_f2
    invoke-virtual/range {v19 .. v19}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v12, v1, v2}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;I)V
    :try_end_ff
    .catch Ljava/lang/RuntimeException; {:try_start_f2 .. :try_end_ff} :catch_156

    .line 154
    :goto_ff
    const-string/jumbo v22, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/UserManager;

    .line 155
    .local v20, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v19 .. v19}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v18

    .line 156
    .local v18, "ui":Landroid/content/pm/UserInfo;
    if-eqz v18, :cond_122

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v22

    if-eqz v22, :cond_122

    .line 157
    const/16 v16, 0x0

    .line 158
    :cond_122
    if-eqz v7, :cond_1ac

    .line 160
    new-instance v22, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const v24, 0x103012b

    invoke-direct/range {v22 .. v24}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v23, 0x10408db

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    .line 173
    .end local v14    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v16    # "shouldShowDisclosure":Z
    .end local v18    # "ui":Landroid/content/pm/UserInfo;
    .end local v20    # "userManager":Landroid/os/UserManager;
    :cond_144
    :goto_144
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    goto/16 :goto_2f

    .line 122
    :catch_149
    move-exception v6

    .line 123
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v22, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v23, "PackageManagerService is dead?"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bd

    .line 132
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v14    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_153
    const/16 v16, 0x0

    goto :goto_f0

    .line 137
    .restart local v16    # "shouldShowDisclosure":Z
    :catch_156
    move-exception v6

    .line 138
    .local v6, "e":Ljava/lang/RuntimeException;
    const/4 v11, -0x1

    .line 139
    .local v11, "launchedFromUid":I
    const-string v10, "?"

    .line 141
    .local v10, "launchedFromPackage":Ljava/lang/String;
    :try_start_15a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v11

    .line 143
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_171
    .catch Landroid/os/RemoteException; {:try_start_15a .. :try_end_171} :catch_1fe

    move-result-object v10

    .line 148
    :goto_172
    sget-object v22, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to launch as UID "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " package "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", while running in "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_ff

    .line 166
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "launchedFromPackage":Ljava/lang/String;
    .end local v11    # "launchedFromUid":I
    .restart local v18    # "ui":Landroid/content/pm/UserInfo;
    .restart local v20    # "userManager":Landroid/os/UserManager;
    :cond_1ac
    if-eqz v16, :cond_144

    .line 167
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    goto/16 :goto_144

    .line 170
    .end local v14    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v16    # "shouldShowDisclosure":Z
    .end local v18    # "ui":Landroid/content/pm/UserInfo;
    .end local v20    # "userManager":Landroid/os/UserManager;
    :cond_1c7
    sget-object v22, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "the intent: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "cannot be forwarded from user "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " to user "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v19 .. v19}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_144

    .line 145
    .restart local v6    # "e":Ljava/lang/RuntimeException;
    .restart local v10    # "launchedFromPackage":Ljava/lang/String;
    .restart local v11    # "launchedFromUid":I
    .restart local v14    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v16    # "shouldShowDisclosure":Z
    :catch_1fe
    move-exception v22

    goto/16 :goto_172
.end method
