.class Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$ImsCallStateListener;
.super Ljava/lang/Object;
.source "UltraPowerSavingTile.java"

# interfaces
.implements Lcom/samsung/commonimsinterface/imscommon/IIMSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsCallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$ImsCallStateListener;->this$0:Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(IILcom/samsung/commonimsinterface/imscommon/IMSParameter;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "action"    # I
    .param p3, "parameter"    # Lcom/samsung/commonimsinterface/imscommon/IMSParameter;

    .prologue
    .line 240
    const-string v0, "UltraPowerSavingTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsCallStateListener.onReceive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    packed-switch p2, :pswitch_data_0

    .line 250
    :goto_0
    return-void

    .line 243
    :pswitch_0
    const-string v0, "duringvideocall"

    invoke-virtual {p3, v0}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$ImsCallStateListener;->this$0:Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->access$100(Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;Ljava/lang/Object;)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$ImsCallStateListener;->this$0:Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$ImsCallStateListener;->this$0:Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->access$200(Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->access$300(Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    .line 241
    :pswitch_data_0
    .packed-switch 0x7ec
        :pswitch_0
    .end packed-switch
.end method
