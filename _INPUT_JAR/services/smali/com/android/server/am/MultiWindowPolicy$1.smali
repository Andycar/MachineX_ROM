.class Lcom/android/server/am/MultiWindowPolicy$1;
.super Landroid/telephony/PhoneStateListener;
.source "MultiWindowPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MultiWindowPolicy;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowPolicy;)V
    .registers 2

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/server/am/MultiWindowPolicy$1;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 11
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 195
    if-ne p1, v7, :cond_2a

    .line 196
    const/4 v2, 0x0

    .line 197
    .local v2, "hasInCallUiPackage":Z
    const-string v0, "com.android.incallui"

    .line 198
    .local v0, "INCALLUI_PACKAGE":Ljava/lang/String;
    const-string v1, "com.android.phone"

    .line 200
    .local v1, "PHONE_PACKAGE":Ljava/lang/String;
    :try_start_8
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-string v4, "com.android.incallui"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_2e

    move-result-object v3

    if-eqz v3, :cond_17

    .line 201
    const/4 v2, 0x1

    .line 205
    :cond_17
    :goto_17
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy$1;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v4, v3, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy$1;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v5, v3, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    if-eqz v2, :cond_2b

    const-string v3, "com.android.incallui"

    :goto_23
    invoke-virtual {v5, v7, v3}, Lcom/android/server/am/MultiWindowPolicy$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/server/am/MultiWindowPolicy$H;->sendMessage(Landroid/os/Message;)Z

    .line 208
    .end local v0    # "INCALLUI_PACKAGE":Ljava/lang/String;
    .end local v1    # "PHONE_PACKAGE":Ljava/lang/String;
    .end local v2    # "hasInCallUiPackage":Z
    :cond_2a
    return-void

    .line 205
    .restart local v0    # "INCALLUI_PACKAGE":Ljava/lang/String;
    .restart local v1    # "PHONE_PACKAGE":Ljava/lang/String;
    .restart local v2    # "hasInCallUiPackage":Z
    :cond_2b
    const-string v3, "com.android.phone"

    goto :goto_23

    .line 203
    :catch_2e
    move-exception v3

    goto :goto_17
.end method
