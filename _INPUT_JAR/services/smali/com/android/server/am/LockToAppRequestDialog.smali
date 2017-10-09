.class public Lcom/android/server/am/LockToAppRequestDialog;
.super Ljava/lang/Object;
.source "LockToAppRequestDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

.field private mCheckbox:Landroid/widget/CheckBox;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mRequestedTask:Lcom/android/server/am/TaskRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManagerService"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/server/am/LockToAppRequestDialog;->mContext:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/android/server/am/LockToAppRequestDialog;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/server/am/LockToAppRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    .line 53
    iput-object p2, p0, Lcom/android/server/am/LockToAppRequestDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 54
    return-void
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/am/LockToAppRequestDialog;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_14

    .line 58
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->getInstance(Lcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/LockPatternUtilsCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/LockToAppRequestDialog;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 61
    :cond_14
    iget-object v0, p0, Lcom/android/server/am/LockToAppRequestDialog;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private getLockString(I)I
    .registers 8
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 99
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/am/LockToAppRequestDialog;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    const-string v3, "lockscreen.password_type"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5, p1}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v0, v2

    .line 101
    .local v0, "quality":I
    sparse-switch v0, :sswitch_data_32

    .line 121
    .end local v0    # "quality":I
    :cond_11
    :goto_11
    return v1

    .line 104
    .restart local v0    # "quality":I
    :sswitch_12
    const v1, 0x1040921

    goto :goto_11

    .line 108
    :sswitch_16
    const v1, 0x1040923

    goto :goto_11

    .line 110
    :sswitch_1a
    invoke-direct {p0}, Lcom/android/server/am/LockToAppRequestDialog;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    const-string v3, "lock_pattern_autolock"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, p1}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_24} :catch_2f

    move-result v2

    if-eqz v2, :cond_11

    .line 112
    const v1, 0x1040922

    goto :goto_11

    .line 116
    :sswitch_2b
    const v1, 0x1040924

    goto :goto_11

    .line 119
    .end local v0    # "quality":I
    :catch_2f
    move-exception v2

    goto :goto_11

    .line 101
    nop

    :sswitch_data_32
    .sparse-switch
        0x10000 -> :sswitch_1a
        0x20000 -> :sswitch_12
        0x30000 -> :sswitch_12
        0x40000 -> :sswitch_16
        0x50000 -> :sswitch_16
        0x60000 -> :sswitch_16
        0x61000 -> :sswitch_2b
    .end sparse-switch
.end method


# virtual methods
.method public clearPrompt()V
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/am/LockToAppRequestDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 127
    iget-object v0, p0, Lcom/android/server/am/LockToAppRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/LockToAppRequestDialog;->mDialog:Landroid/app/AlertDialog;

    .line 130
    :cond_c
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 203
    const/4 v0, -0x1

    if-ne v0, p2, :cond_2c

    .line 204
    const-string v0, "ActivityManager"

    const-string v1, "accept lock-to-app request"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/android/server/am/LockToAppRequestDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_to_app_exit_locked"

    iget-object v0, p0, Lcom/android/server/am/LockToAppRequestDialog;->mCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/am/LockToAppRequestDialog;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_1f
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 211
    iget-object v0, p0, Lcom/android/server/am/LockToAppRequestDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/LockToAppRequestDialog;->mRequestedTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->startLockTaskMode(Lcom/android/server/am/TaskRecord;)V

    .line 215
    :goto_29
    return-void

    .line 206
    :cond_2a
    const/4 v0, 0x0

    goto :goto_1f

    .line 213
    :cond_2c
    const-string v0, "ActivityManager"

    const-string v1, "ignore lock-to-app request"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method public showLockTaskPrompt(Lcom/android/server/am/TaskRecord;)V
    .registers 16
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 133
    invoke-virtual {p0}, Lcom/android/server/am/LockToAppRequestDialog;->clearPrompt()V

    .line 134
    iput-object p1, p0, Lcom/android/server/am/LockToAppRequestDialog;->mRequestedTask:Lcom/android/server/am/TaskRecord;

    .line 135
    iget v11, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-direct {p0, v11}, Lcom/android/server/am/LockToAppRequestDialog;->getLockString(I)I

    move-result v9

    .line 137
    .local v9, "unlockStringId":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 145
    .local v4, "r":Landroid/content/res/Resources;
    iget-object v11, p0, Lcom/android/server/am/LockToAppRequestDialog;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    .line 146
    .local v2, "hasPermanentMenuKey":Z
    if-eqz v2, :cond_d9

    .line 147
    iget-object v11, p0, Lcom/android/server/am/LockToAppRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_d4

    const v11, 0x104091e

    :goto_28
    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "description":Ljava/lang/String;
    :goto_2c
    const v11, 0x1040920

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "pinWindows":Ljava/lang/String;
    const v11, 0x104091f

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v3, v13, v12

    invoke-virtual {v4, v11, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "title":Ljava/lang/String;
    new-instance v11, Landroid/app/AlertDialog$Builder;

    iget-object v13, p0, Lcom/android/server/am/LockToAppRequestDialog;->mContext:Landroid/content/Context;

    invoke-direct {v11, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v13, 0x104068e

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v13, 0x104068d

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 164
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz v9, :cond_ee

    .line 165
    const v11, 0x1090075

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    .line 169
    :goto_67
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/am/LockToAppRequestDialog;->mDialog:Landroid/app/AlertDialog;

    .line 171
    iget-object v11, p0, Lcom/android/server/am/LockToAppRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v13, 0x7d3

    invoke-virtual {v11, v13}, Landroid/view/Window;->setType(I)V

    .line 172
    iget-object v11, p0, Lcom/android/server/am/LockToAppRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iget v13, v11, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v13, v13, 0x10

    iput v13, v11, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 174
    iget-object v11, p0, Lcom/android/server/am/LockToAppRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    .line 176
    if-eqz v9, :cond_f5

    .line 177
    iget-object v11, p0, Lcom/android/server/am/LockToAppRequestDialog;->mDialog:Landroid/app/AlertDialog;

    const v13, 0x10203a4

    invoke-virtual {v11, v13}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 178
    .local v6, "tv":Landroid/widget/TextView;
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v11, p0, Lcom/android/server/am/LockToAppRequestDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 181
    .local v7, "unlockString":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/am/LockToAppRequestDialog;->mDialog:Landroid/app/AlertDialog;

    const v13, 0x10203a5

    invoke-virtual {v11, v13}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    iput-object v11, p0, Lcom/android/server/am/LockToAppRequestDialog;->mCheckbox:Landroid/widget/CheckBox;

    .line 185
    const v11, 0x1040925

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v7, v13, v12

    invoke-virtual {v4, v11, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 186
    .local v8, "unlockStringCombination":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/am/LockToAppRequestDialog;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v11, v8}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :try_start_c0
    iget-object v11, p0, Lcom/android/server/am/LockToAppRequestDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "lock_to_app_exit_locked"

    invoke-static {v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_f3

    .line 193
    .local v10, "useLock":Z
    :goto_ce
    iget-object v11, p0, Lcom/android/server/am/LockToAppRequestDialog;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v11, v10}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_d3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_c0 .. :try_end_d3} :catch_f9

    .line 199
    .end local v6    # "tv":Landroid/widget/TextView;
    .end local v7    # "unlockString":Ljava/lang/String;
    .end local v8    # "unlockStringCombination":Ljava/lang/String;
    .end local v10    # "useLock":Z
    :goto_d3
    return-void

    .line 147
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "description":Ljava/lang/String;
    .end local v3    # "pinWindows":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    :cond_d4
    const v11, 0x104091d

    goto/16 :goto_28

    .line 151
    :cond_d9
    iget-object v11, p0, Lcom/android/server/am/LockToAppRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_ea

    const v11, 0x104068c

    :goto_e4
    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "description":Ljava/lang/String;
    goto/16 :goto_2c

    .end local v1    # "description":Ljava/lang/String;
    :cond_ea
    const v11, 0x104068b

    goto :goto_e4

    .line 167
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v1    # "description":Ljava/lang/String;
    .restart local v3    # "pinWindows":Ljava/lang/String;
    .restart local v5    # "title":Ljava/lang/String;
    :cond_ee
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_67

    .restart local v6    # "tv":Landroid/widget/TextView;
    .restart local v7    # "unlockString":Ljava/lang/String;
    .restart local v8    # "unlockStringCombination":Ljava/lang/String;
    :cond_f3
    move v10, v12

    .line 191
    goto :goto_ce

    .line 197
    .end local v6    # "tv":Landroid/widget/TextView;
    .end local v7    # "unlockString":Ljava/lang/String;
    .end local v8    # "unlockStringCombination":Ljava/lang/String;
    :cond_f5
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/am/LockToAppRequestDialog;->mCheckbox:Landroid/widget/CheckBox;

    goto :goto_d3

    .line 194
    .restart local v6    # "tv":Landroid/widget/TextView;
    .restart local v7    # "unlockString":Ljava/lang/String;
    .restart local v8    # "unlockStringCombination":Ljava/lang/String;
    :catch_f9
    move-exception v11

    goto :goto_d3
.end method
