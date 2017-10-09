.class Lcom/android/server/enterprise/restriction/RestrictionPolicy$8;
.super Landroid/os/Handler;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .registers 2

    .prologue
    .line 863
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$8;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 866
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_24

    .line 875
    :goto_5
    return-void

    .line 869
    :pswitch_6
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.voicerecorder.service"

    const-string v3, "com.sec.android.app.voicerecorder.service.VoiceRecorderService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    .local v0, "compName":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.voicerecorder.HIDENOTIFICATION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 872
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$8;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$500(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_5

    .line 866
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
