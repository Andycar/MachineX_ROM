.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$53$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$53;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$53;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$53;)V
    .locals 0

    .prologue
    .line 6595
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$53$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$53;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 6598
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$53$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$53;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$53;->val$keyguardShowing:Z

    if-eqz v2, :cond_0

    .line 6599
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V

    .line 6603
    :cond_0
    const-string v2, "quickconnect"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/quickconnect/IQuickConnectManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/quickconnect/IQuickConnectManager;

    move-result-object v1

    .line 6605
    .local v1, "qm":Lcom/samsung/android/quickconnect/IQuickConnectManager;
    invoke-interface {v1}, Lcom/samsung/android/quickconnect/IQuickConnectManager;->selectedItemCallback()V

    .line 6606
    const-string v2, "PhoneStatusBar"

    const-string v3, "quickConnectButtonOnClick"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6610
    .end local v1    # "qm":Lcom/samsung/android/quickconnect/IQuickConnectManager;
    :goto_0
    return-void

    .line 6607
    :catch_0
    move-exception v0

    .line 6608
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PhoneStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot launch activity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
