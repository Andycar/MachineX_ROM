.class Ljava/lang/ProcessManager$ProcessReferenceQueue;
.super Ljava/lang/ref/ReferenceQueue;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessReferenceQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/ReferenceQueue",
        "<",
        "Ljava/lang/ProcessManager$ProcessImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public poll()Ljava/lang/ProcessManager$ProcessReference;
    .registers 2

    .prologue
    .line 330
    invoke-super {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .line 331
    .local v0, "reference":Ljava/lang/ref/Reference;
    check-cast v0, Ljava/lang/ProcessManager$ProcessReference;

    .end local v0    # "reference":Ljava/lang/ref/Reference;
    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/ref/Reference;
    .registers 2

    .prologue
    .line 325
    invoke-virtual {p0}, Ljava/lang/ProcessManager$ProcessReferenceQueue;->poll()Ljava/lang/ProcessManager$ProcessReference;

    move-result-object v0

    return-object v0
.end method
