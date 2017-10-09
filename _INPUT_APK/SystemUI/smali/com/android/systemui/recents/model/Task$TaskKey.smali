.class public Lcom/android/systemui/recents/model/Task$TaskKey;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskKey"
.end annotation


# instance fields
.field public final baseIntent:Landroid/content/Intent;

.field public firstActiveTime:J

.field public final id:I

.field public lastActiveTime:J

.field final mComponentNameKey:Lcom/android/systemui/recents/model/Task$ComponentNameKey;

.field public origActivity:Landroid/content/ComponentName;

.field public final userId:I


# direct methods
.method public constructor <init>(ILandroid/content/Intent;IJJ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I
    .param p4, "firstActiveTime"    # J
    .param p6, "lastActiveTime"    # J

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/android/systemui/recents/model/Task$ComponentNameKey;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/android/systemui/recents/model/Task$ComponentNameKey;-><init>(Landroid/content/ComponentName;I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->mComponentNameKey:Lcom/android/systemui/recents/model/Task$ComponentNameKey;

    .line 82
    iput p1, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    .line 83
    iput-object p2, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 84
    iput p3, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    .line 85
    iput-wide p4, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->firstActiveTime:J

    .line 86
    iput-wide p6, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    .line 87
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 104
    instance-of v0, p1, Lcom/android/systemui/recents/model/Task$TaskKey;

    if-nez v0, :cond_0

    .line 107
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    iget v2, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-ne v2, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    check-cast p1, Lcom/android/systemui/recents/model/Task$TaskKey;

    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public getComponentNameKey()Lcom/android/systemui/recents/model/Task$ComponentNameKey;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->mComponentNameKey:Lcom/android/systemui/recents/model/Task$ComponentNameKey;

    return-object v0
.end method

.method public getOrigActivity()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->origActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 113
    iget v0, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    shl-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setOrigActivity(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "oa"    # Landroid/content/ComponentName;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->origActivity:Landroid/content/ComponentName;

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task.Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "u: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
