.class Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoCapabilityReceiver"
.end annotation


# instance fields
.field private mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .registers 3

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;
    .param p1, "x1"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

    return-object p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 465
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

    if-nez v4, :cond_47

    .line 467
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 468
    .local v3, "type":Ljava/lang/String;
    const/4 v2, -0x1

    .line 470
    .local v2, "requestedPid":I
    :try_start_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_10} :catch_48

    move-result v2

    .line 474
    :goto_11
    const/4 v4, -0x1

    if-le v2, v4, :cond_47

    .line 475
    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 476
    .local v1, "pinfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-static {v1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 477
    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_47

    .line 478
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

    .line 479
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

    const v5, 0x104000a

    new-instance v6, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver$1;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver$1;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 486
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

    const v5, 0x1040b9d

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 487
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 491
    .end local v1    # "pinfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "requestedPid":I
    .end local v3    # "type":Ljava/lang/String;
    :cond_47
    return-void

    .line 471
    .restart local v2    # "requestedPid":I
    .restart local v3    # "type":Ljava/lang/String;
    :catch_48
    move-exception v0

    .line 472
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "MultiPhoneWindow"

    const-string v5, "attached item in getType() is not an int type"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public register()V
    .registers 3

    .prologue
    .line 453
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.VIDEOCAPABILITY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 454
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 455
    return-void
.end method

.method public unregister()V
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 459
    return-void
.end method
