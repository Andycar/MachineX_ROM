.class Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$2;
.super Ljava/lang/Object;
.source "SecureCameraLaunchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->onSwipingStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$2;->this$0:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 177
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui.statusbar.phone.CLOSE_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$2;->this$0:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->access$700(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 179
    return-void
.end method
