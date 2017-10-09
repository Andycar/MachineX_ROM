.class Lcom/android/systemui/statusbar/DoNotDisturb$1;
.super Landroid/content/BroadcastReceiver;
.source "DoNotDisturb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/DoNotDisturb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/DoNotDisturb;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/DoNotDisturb;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/systemui/statusbar/DoNotDisturb$1;->this$0:Lcom/android/systemui/statusbar/DoNotDisturb;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 229
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "intentAction":Ljava/lang/String;
    const-string v1, "StatusBar-DoNotDistrub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received intent with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " action"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb$1;->this$0:Lcom/android/systemui/statusbar/DoNotDisturb;

    iget-object v2, p0, Lcom/android/systemui/statusbar/DoNotDisturb$1;->this$0:Lcom/android/systemui/statusbar/DoNotDisturb;

    iget-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb$1;->this$0:Lcom/android/systemui/statusbar/DoNotDisturb;

    invoke-static {v3}, Lcom/android/systemui/statusbar/DoNotDisturb;->access$100(Lcom/android/systemui/statusbar/DoNotDisturb;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/DoNotDisturb;->isPrayModeEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/DoNotDisturb;->access$002(Lcom/android/systemui/statusbar/DoNotDisturb;Z)Z

    .line 232
    iget-object v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb$1;->this$0:Lcom/android/systemui/statusbar/DoNotDisturb;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/DoNotDisturb;->updateDoNotDisturbStatus()V

    .line 233
    return-void
.end method
