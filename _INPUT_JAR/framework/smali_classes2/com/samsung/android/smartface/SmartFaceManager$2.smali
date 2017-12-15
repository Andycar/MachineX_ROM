.class Lcom/samsung/android/smartface/SmartFaceManager$2;
.super Ljava/lang/Object;
.source "SmartFaceManager.java"

# interfaces
.implements Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/smartface/SmartFaceManager;->checkForSmartRotation(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/smartface/SmartFaceManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/smartface/SmartFaceManager;)V
    .registers 2

    .prologue
    .line 389
    iput-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager$2;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lcom/samsung/android/smartface/FaceInfo;I)V
    .registers 6
    .param p1, "data"    # Lcom/samsung/android/smartface/FaceInfo;
    .param p2, "service_type"    # I

    .prologue
    .line 394
    const-string v0, "SmartFaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkForSmartRotation onInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/smartface/FaceInfo;->needToRotate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_4e

    .line 397
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$2;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    # getter for: Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->access$000(Lcom/samsung/android/smartface/SmartFaceManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 398
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$2;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    iget v1, p1, Lcom/samsung/android/smartface/FaceInfo;->needToRotate:I

    # setter for: Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I
    invoke-static {v0, v1}, Lcom/samsung/android/smartface/SmartFaceManager;->access$102(Lcom/samsung/android/smartface/SmartFaceManager;I)I

    .line 399
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$2;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    # getter for: Lcom/samsung/android/smartface/SmartFaceManager;->complete:Ljava/util/concurrent/locks/Condition;
    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->access$200(Lcom/samsung/android/smartface/SmartFaceManager;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 400
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$2;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    # getter for: Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->access$000(Lcom/samsung/android/smartface/SmartFaceManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 402
    :cond_4e
    return-void
.end method
