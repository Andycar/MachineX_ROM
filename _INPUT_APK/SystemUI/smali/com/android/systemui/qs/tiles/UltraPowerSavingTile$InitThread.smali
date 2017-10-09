.class Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$InitThread;
.super Ljava/lang/Thread;
.source "UltraPowerSavingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$InitThread;->this$0:Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 256
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 258
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$InitThread;->this$0:Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->access$400(Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    .line 261
    .local v1, "interfaceForCall":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;
    if-eqz v1, :cond_0

    .line 263
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$InitThread;->this$0:Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->access$500(Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;)Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;->registerForCallStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0

    .line 268
    .end local v0    # "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    :cond_0
    const-string v2, "UltraPowerSavingTile"

    const-string v3, "init.interfaceForCall is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
