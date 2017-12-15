.class Landroid/media/SoundPool$SoundPoolStub;
.super Ljava/lang/Object;
.source "SoundPool.java"

# interfaces
.implements Landroid/media/SoundPool$SoundPoolDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SoundPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SoundPoolStub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final autoPause()V
    .registers 1

    .prologue
    .line 785
    return-void
.end method

.method public final autoResume()V
    .registers 1

    .prologue
    .line 787
    return-void
.end method

.method public load(Landroid/content/Context;II)I
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "priority"    # I

    .prologue
    .line 761
    const/4 v0, 0x0

    return v0
.end method

.method public load(Landroid/content/res/AssetFileDescriptor;I)I
    .registers 4
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "priority"    # I

    .prologue
    .line 765
    const/4 v0, 0x0

    return v0
.end method

.method public load(Ljava/io/FileDescriptor;JJI)I
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "priority"    # I

    .prologue
    .line 769
    const/4 v0, 0x0

    return v0
.end method

.method public load(Ljava/lang/String;I)I
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    .line 757
    const/4 v0, 0x0

    return v0
.end method

.method public final pause(I)V
    .registers 2
    .param p1, "streamID"    # I

    .prologue
    .line 781
    return-void
.end method

.method public final play(IFFIIF)I
    .registers 8
    .param p1, "soundID"    # I
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F
    .param p4, "priority"    # I
    .param p5, "loop"    # I
    .param p6, "rate"    # F

    .prologue
    .line 778
    const/4 v0, 0x0

    return v0
.end method

.method public final release()V
    .registers 1

    .prologue
    .line 813
    return-void
.end method

.method public final resume(I)V
    .registers 2
    .param p1, "streamID"    # I

    .prologue
    .line 783
    return-void
.end method

.method public final setLoop(II)V
    .registers 3
    .param p1, "streamID"    # I
    .param p2, "loop"    # I

    .prologue
    .line 799
    return-void
.end method

.method public setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/SoundPool$OnLoadCompleteListener;

    .prologue
    .line 811
    return-void
.end method

.method public final setPriority(II)V
    .registers 3
    .param p1, "streamID"    # I
    .param p2, "priority"    # I

    .prologue
    .line 797
    return-void
.end method

.method public final setRate(IF)V
    .registers 3
    .param p1, "streamID"    # I
    .param p2, "rate"    # F

    .prologue
    .line 801
    return-void
.end method

.method public final setStreamType(I)V
    .registers 2
    .param p1, "streamType"    # I

    .prologue
    .line 808
    return-void
.end method

.method public setVolume(IF)V
    .registers 3
    .param p1, "streamID"    # I
    .param p2, "volume"    # F

    .prologue
    .line 795
    return-void
.end method

.method public final setVolume(IFF)V
    .registers 4
    .param p1, "streamID"    # I
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F

    .prologue
    .line 792
    return-void
.end method

.method public final stop(I)V
    .registers 2
    .param p1, "streamID"    # I

    .prologue
    .line 789
    return-void
.end method

.method public final unload(I)Z
    .registers 3
    .param p1, "soundID"    # I

    .prologue
    .line 773
    const/4 v0, 0x1

    return v0
.end method
