.class Lcom/android/systemui/statusbar/phone/ScrimController$4;
.super Ljava/lang/Object;
.source "ScrimController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ScrimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ScrimController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 376
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ScrimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pulse in, mDozing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$400(Lcom/android/systemui/statusbar/phone/ScrimController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$400(Lcom/android/systemui/statusbar/phone/ScrimController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 387
    :goto_0
    return-void

    .line 378
    :cond_1
    invoke-static {}, Lcom/android/systemui/doze/DozeLog;->tracePulseStart()V

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$600(Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseInDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$502(Lcom/android/systemui/statusbar/phone/ScrimController;J)J

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$702(Lcom/android/systemui/statusbar/phone/ScrimController;J)J

    .line 381
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$802(Lcom/android/systemui/statusbar/phone/ScrimController;Z)Z

    .line 382
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$900(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$202(Lcom/android/systemui/statusbar/phone/ScrimController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1000(Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/ScrimView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1100(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/ScrimView;F)V

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1200(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    goto :goto_0
.end method
