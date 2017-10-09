.class Lcom/android/systemui/qs/tiles/ApnTile$3;
.super Landroid/content/BroadcastReceiver;
.source "ApnTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ApnTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ApnTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ApnTile;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ApnTile$3;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 257
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "intentAction":Ljava/lang/String;
    const-string v2, "ApnTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intentAction:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 260
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ApnTile$3;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile$3;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/ApnTile;->access$300(Lcom/android/systemui/qs/tiles/ApnTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    invoke-static {v2, v1}, Lcom/android/systemui/qs/tiles/ApnTile;->access$002(Lcom/android/systemui/qs/tiles/ApnTile;Z)Z

    .line 261
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile$3;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ApnTile$3;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/ApnTile;->access$400(Lcom/android/systemui/qs/tiles/ApnTile;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/ApnTile;->access$102(Lcom/android/systemui/qs/tiles/ApnTile;Z)Z

    .line 262
    const-string v1, "ApnTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMobileData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile$3;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/ApnTile;->access$100(Lcom/android/systemui/qs/tiles/ApnTile;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile$3;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ApnTile;->access$200(Lcom/android/systemui/qs/tiles/ApnTile;)V

    .line 285
    :cond_0
    :goto_1
    return-void

    .line 260
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 264
    :cond_2
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 268
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile$3;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ApnTile$3;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/ApnTile;->access$400(Lcom/android/systemui/qs/tiles/ApnTile;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/ApnTile;->access$102(Lcom/android/systemui/qs/tiles/ApnTile;Z)Z

    .line 269
    const-string v1, "ApnTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMobileData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile$3;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/ApnTile;->access$100(Lcom/android/systemui/qs/tiles/ApnTile;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile$3;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ApnTile;->access$200(Lcom/android/systemui/qs/tiles/ApnTile;)V

    goto :goto_1

    .line 271
    :cond_4
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 274
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile$3;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ApnTile$3;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/ApnTile;->access$400(Lcom/android/systemui/qs/tiles/ApnTile;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/ApnTile;->access$102(Lcom/android/systemui/qs/tiles/ApnTile;Z)Z

    .line 275
    const-string v1, "ApnTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMobileData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile$3;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/ApnTile;->access$100(Lcom/android/systemui/qs/tiles/ApnTile;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile$3;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ApnTile;->access$200(Lcom/android/systemui/qs/tiles/ApnTile;)V

    goto/16 :goto_1

    .line 277
    :cond_6
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 278
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile$3;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ApnTile;->access$500(Lcom/android/systemui/qs/tiles/ApnTile;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile$3;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ApnTile;->access$500(Lcom/android/systemui/qs/tiles/ApnTile;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile$3;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ApnTile;->access$500(Lcom/android/systemui/qs/tiles/ApnTile;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    goto/16 :goto_1

    .line 281
    :cond_7
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile$3;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ApnTile;->access$600(Lcom/android/systemui/qs/tiles/ApnTile;)V

    .line 283
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile$3;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ApnTile$3;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/ApnTile;->access$700(Lcom/android/systemui/qs/tiles/ApnTile;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tiles/ApnTile;->registerPhoneStateListener(Landroid/content/Context;)V

    goto/16 :goto_1
.end method
