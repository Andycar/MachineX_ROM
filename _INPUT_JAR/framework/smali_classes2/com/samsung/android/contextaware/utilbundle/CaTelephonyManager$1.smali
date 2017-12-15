.class Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;
.super Landroid/telephony/PhoneStateListener;
.source "CaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;)V
    .registers 2

    .prologue
    .line 102
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 104
    packed-switch p1, :pswitch_data_40

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "state is unknown (state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 119
    :goto_24
    return-void

    .line 106
    :pswitch_25
    const-string v0, "CALL_STATE_IDLE"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    const/16 v1, -0x28

    # invokes: Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->sendCallStatusToSensorHub(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->access$000(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;I)V

    goto :goto_24

    .line 111
    :pswitch_32
    const-string v0, "CALL_STATE_ACTIVE"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    const/16 v1, -0x27

    # invokes: Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->sendCallStatusToSensorHub(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->access$000(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;I)V

    goto :goto_24

    .line 104
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_25
        :pswitch_32
        :pswitch_32
    .end packed-switch
.end method
