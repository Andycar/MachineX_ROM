.class public Lcom/android/systemui/recents/misc/NamedCounter;
.super Ljava/lang/Object;
.source "NamedCounter.java"


# instance fields
.field mCount:I

.field mPrefix:Ljava/lang/String;

.field mSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/recents/misc/NamedCounter;->mPrefix:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/recents/misc/NamedCounter;->mSuffix:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/android/systemui/recents/misc/NamedCounter;->mPrefix:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/android/systemui/recents/misc/NamedCounter;->mSuffix:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public nextName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/recents/misc/NamedCounter;->mPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/recents/misc/NamedCounter;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/misc/NamedCounter;->mSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "name":Ljava/lang/String;
    iget v1, p0, Lcom/android/systemui/recents/misc/NamedCounter;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/recents/misc/NamedCounter;->mCount:I

    .line 37
    return-object v0
.end method
