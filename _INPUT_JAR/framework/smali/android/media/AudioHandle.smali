.class Landroid/media/AudioHandle;
.super Ljava/lang/Object;
.source "AudioHandle.java"


# instance fields
.field private final mId:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "id"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Landroid/media/AudioHandle;->mId:I

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 38
    if-eqz p1, :cond_7

    instance-of v2, p1, Landroid/media/AudioHandle;

    if-nez v2, :cond_8

    .line 42
    :cond_7
    :goto_7
    return v1

    :cond_8
    move-object v0, p1

    .line 41
    check-cast v0, Landroid/media/AudioHandle;

    .line 42
    .local v0, "ah":Landroid/media/AudioHandle;
    iget v2, p0, Landroid/media/AudioHandle;->mId:I

    invoke-virtual {v0}, Landroid/media/AudioHandle;->id()I

    move-result v3

    if-ne v2, v3, :cond_7

    const/4 v1, 0x1

    goto :goto_7
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Landroid/media/AudioHandle;->mId:I

    return v0
.end method

.method id()I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Landroid/media/AudioHandle;->mId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Landroid/media/AudioHandle;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
