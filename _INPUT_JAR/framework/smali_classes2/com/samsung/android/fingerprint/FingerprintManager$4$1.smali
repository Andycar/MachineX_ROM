.class Lcom/samsung/android/fingerprint/FingerprintManager$4$1;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/fingerprint/FingerprintManager$4;->onEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/fingerprint/FingerprintManager$4;

.field final synthetic val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/samsung/android/fingerprint/FingerprintManager$4;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .registers 3

    .prologue
    .line 1407
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$4;

    iput-object p2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    packed-switch v0, :pswitch_data_5c

    .line 1437
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 1416
    :pswitch_8
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v0, :cond_26

    .line 1417
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$4;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintManager$4;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

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

    .line 1419
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 1420
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    sparse-switch v0, :sswitch_data_66

    .line 1433
    :goto_34
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$4;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintManager$4;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    goto :goto_7

    .line 1422
    :sswitch_3c
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$4;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintManager$4;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->setEnrollFinishResult(I)V

    .line 1423
    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$800()Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;->onEnrollFinish()V

    goto :goto_34

    .line 1429
    :sswitch_4c
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$4;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintManager$4;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->setEnrollFinishResult(I)V

    .line 1430
    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$800()Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;->onEnrollFinish()V

    goto :goto_34

    .line 1410
    :pswitch_data_5c
    .packed-switch 0xb
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 1420
    :sswitch_data_66
    .sparse-switch
        0x4 -> :sswitch_4c
        0x7 -> :sswitch_4c
        0x8 -> :sswitch_3c
        0xb -> :sswitch_4c
        0x33 -> :sswitch_4c
    .end sparse-switch
.end method
