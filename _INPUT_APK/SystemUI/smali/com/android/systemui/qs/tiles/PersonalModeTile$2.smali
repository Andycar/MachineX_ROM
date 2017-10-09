.class Lcom/android/systemui/qs/tiles/PersonalModeTile$2;
.super Landroid/content/BroadcastReceiver;
.source "PersonalModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/PersonalModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/PersonalModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/PersonalModeTile;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/PersonalModeTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    :cond_0
    const-string v2, "PersonalModeTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isAfwProfile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/PersonalModeTile;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/PersonalModeTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->access$300(Lcom/android/systemui/qs/tiles/PersonalModeTile;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->isAfwProfile(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/PersonalModeTile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/PersonalModeTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->access$400(Lcom/android/systemui/qs/tiles/PersonalModeTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->isAfwProfile(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/PersonalModeTile;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->access$500(Lcom/android/systemui/qs/tiles/PersonalModeTile;Ljava/lang/Object;)V

    .line 85
    :cond_1
    :goto_0
    return-void

    .line 83
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/PersonalModeTile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/PersonalModeTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->access$600(Lcom/android/systemui/qs/tiles/PersonalModeTile;)Lcom/android/systemui/qs/SystemSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v3

    if-ne v3, v1, :cond_3

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->access$700(Lcom/android/systemui/qs/tiles/PersonalModeTile;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_1
.end method
