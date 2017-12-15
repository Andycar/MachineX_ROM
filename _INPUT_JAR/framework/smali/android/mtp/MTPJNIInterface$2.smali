.class Landroid/mtp/MTPJNIInterface$2;
.super Landroid/content/BroadcastReceiver;
.source "MTPJNIInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MTPJNIInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/MTPJNIInterface;


# direct methods
.method constructor <init>(Landroid/mtp/MTPJNIInterface;)V
    .registers 2

    .prologue
    .line 309
    iput-object p1, p0, Landroid/mtp/MTPJNIInterface$2;->this$0:Landroid/mtp/MTPJNIInterface;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, "action":Ljava/lang/String;
    if-eqz p2, :cond_3f

    .line 313
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 319
    const-string v1, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In MTPJNIINterface onReceive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 323
    sget-boolean v1, Landroid/mtp/MTPJNIInterface;->objectEventReceived:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3e

    .line 324
    const/4 v1, 0x0

    sput-boolean v1, Landroid/mtp/MTPJNIInterface;->objectEventReceived:Z

    .line 325
    iget-object v1, p0, Landroid/mtp/MTPJNIInterface$2;->this$0:Landroid/mtp/MTPJNIInterface;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    .line 326
    const-string v1, "MTPJNIInterface"

    const-string/jumbo v2, "storageinfo changed event sent to stack"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_3e
    :goto_3e
    return-void

    .line 315
    :cond_3f
    const-string v1, "MTPJNIInterface"

    const-string v2, "In MTPJNIINterface intent is coming null::"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method
