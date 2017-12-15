.class Lcom/samsung/android/fingerprint/FingerprintManager$5$1;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/fingerprint/FingerprintManager$5;->onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/fingerprint/FingerprintManager$5;

.field final synthetic val$mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/samsung/android/fingerprint/FingerprintManager$5;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .registers 3

    .prologue
    .line 1505
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$5$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$5;

    iput-object p2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$5$1;->val$mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$5$1;->val$mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    packed-switch v0, :pswitch_data_5c

    .line 1535
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 1514
    :pswitch_8
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$5$1;->val$mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v0, :cond_26

    .line 1515
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$5$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$5;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintManager$5;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$700()Landroid/content/Context;

    move-result-object v1

    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$800()Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    move-result-object v2

    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mStringId:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$900()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mIndex:I
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$1000()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->startSettingEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)V

    goto :goto_7

    .line 1517
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$5$1;->val$mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 1518
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$5$1;->val$mEvent:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    sparse-switch v0, :sswitch_data_66

    .line 1531
    :goto_34
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$5$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$5;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintManager$5;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    goto :goto_7

    .line 1520
    :sswitch_3c
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$5$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$5;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintManager$5;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->setEnrollFinishResult(I)V

    .line 1521
    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$800()Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;->onEnrollFinish()V

    goto :goto_34

    .line 1527
    :sswitch_4c
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$5$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$5;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintManager$5;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->setEnrollFinishResult(I)V

    .line 1528
    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$800()Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;->onEnrollFinish()V

    goto :goto_34

    .line 1508
    :pswitch_data_5c
    .packed-switch 0xb
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 1518
    :sswitch_data_66
    .sparse-switch
        0x4 -> :sswitch_4c
        0x7 -> :sswitch_4c
        0x8 -> :sswitch_3c
        0xb -> :sswitch_4c
        0x33 -> :sswitch_4c
    .end sparse-switch
.end method
