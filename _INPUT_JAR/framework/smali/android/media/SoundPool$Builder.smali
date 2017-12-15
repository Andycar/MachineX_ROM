.class public Landroid/media/SoundPool$Builder;
.super Ljava/lang/Object;
.source "SoundPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SoundPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mMaxStreams:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/SoundPool$Builder;->mMaxStreams:I

    .line 160
    return-void
.end method


# virtual methods
.method public build()Landroid/media/SoundPool;
    .registers 5

    .prologue
    .line 193
    iget-object v0, p0, Landroid/media/SoundPool$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    if-nez v0, :cond_14

    .line 194
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SoundPool$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 197
    :cond_14
    new-instance v0, Landroid/media/SoundPool;

    iget v1, p0, Landroid/media/SoundPool$Builder;->mMaxStreams:I

    iget-object v2, p0, Landroid/media/SoundPool$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(ILandroid/media/AudioAttributes;Landroid/media/SoundPool$1;)V

    return-object v0
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;
    .registers 4
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 185
    if-nez p1, :cond_a

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid null AudioAttributes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_a
    iput-object p1, p0, Landroid/media/SoundPool$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 189
    return-object p0
.end method

.method public setMaxStreams(I)Landroid/media/SoundPool$Builder;
    .registers 4
    .param p1, "maxStreams"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 169
    if-gtz p1, :cond_a

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strictly positive value required for the maximum number of streams"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_a
    iput p1, p0, Landroid/media/SoundPool$Builder;->mMaxStreams:I

    .line 174
    return-object p0
.end method
