.class public Lcom/android/systemui/GuestResumeSessionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GuestResumeSessionReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;
    }
.end annotation


# static fields
.field private static final SETTING_GUEST_HAS_LOGGED_IN:Ljava/lang/String; = "systemui.guest_has_logged_in"

.field private static final TAG:Ljava/lang/String; = "GuestResumeSessionReceiver"


# instance fields
.field private mNewSessionDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 145
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/android/systemui/GuestResumeSessionReceiver;->wipeGuestSession(Landroid/content/Context;I)V

    return-void
.end method

.method private cancelDialog()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/Dialog;

    .line 143
    :cond_0
    return-void
.end method

.method private static wipeGuestSession(Landroid/content/Context;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 96
    const-string v5, "user"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 99
    .local v4, "userManager":Landroid/os/UserManager;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 104
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    if-eq v5, p1, :cond_0

    .line 105
    const-string v5, "GuestResumeSessionReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "User requesting to start a new session ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not current user ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v0    # "currentUser":Landroid/content/pm/UserInfo;
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "GuestResumeSessionReceiver"

    const-string v6, "Couldn\'t wipe session because ActivityManager is dead"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "currentUser":Landroid/content/pm/UserInfo;
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v5

    if-nez v5, :cond_1

    .line 110
    const-string v5, "GuestResumeSessionReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "User requesting to start a new session ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a guest"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :cond_1
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->markGuestForDeletion(I)Z

    move-result v2

    .line 116
    .local v2, "marked":Z
    if-nez v2, :cond_2

    .line 117
    const-string v5, "GuestResumeSessionReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t mark the guest for deletion for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_2
    iget-object v5, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p0, v5}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 123
    .local v3, "newGuest":Landroid/content/pm/UserInfo;
    if-nez v3, :cond_3

    .line 124
    :try_start_1
    const-string v5, "GuestResumeSessionReceiver"

    const-string v6, "Could not create new guest, switching back to owner"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 126
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->removeUser(I)Z

    .line 127
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 132
    :catch_1
    move-exception v1

    .line 133
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v5, "GuestResumeSessionReceiver"

    const-string v6, "Couldn\'t wipe session because ActivityManager or WindowManager is dead"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 130
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 131
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v7, -0x2710

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/GuestResumeSessionReceiver;->cancelDialog()V

    .line 61
    const-string v6, "android.intent.extra.user_handle"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 62
    .local v5, "userId":I
    if-ne v5, v7, :cond_1

    .line 63
    const-string v6, "GuestResumeSessionReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sent to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "GuestResumeSessionReceiver"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " without EXTRA_USER_HANDLE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v5    # "userId":I
    :cond_0
    :goto_0
    return-void

    .line 69
    .restart local v5    # "userId":I
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 73
    .local v2, "currentUser":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 78
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v6, "systemui.guest_has_logged_in"

    const/4 v7, 0x0

    invoke-static {v1, v6, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 80
    .local v4, "notFirstLogin":I
    if-eqz v4, :cond_2

    .line 81
    new-instance v6, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;

    invoke-direct {v6, p1, v5}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/Dialog;

    .line 82
    iget-object v6, p0, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 70
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v4    # "notFirstLogin":I
    :catch_0
    move-exception v3

    .line 71
    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 84
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v1    # "cr":Landroid/content/ContentResolver;
    .restart local v2    # "currentUser":Landroid/content/pm/UserInfo;
    .restart local v4    # "notFirstLogin":I
    :cond_2
    const-string v6, "systemui.guest_has_logged_in"

    const/4 v7, 0x1

    invoke-static {v1, v6, v7, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public register(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 49
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 50
    .local v3, "f":Landroid/content/IntentFilter;
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 52
    return-void
.end method
