.class public abstract Landroid/media/VolumeProvider;
.super Ljava/lang/Object;
.source "VolumeProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeProvider$Callback;
    }
.end annotation


# static fields
.field public static final VOLUME_CONTROL_ABSOLUTE:I = 0x2

.field public static final VOLUME_CONTROL_FIXED:I = 0x0

.field public static final VOLUME_CONTROL_RELATIVE:I = 0x1


# instance fields
.field private mCallback:Landroid/media/VolumeProvider$Callback;

.field private final mControlType:I

.field private mCurrentVolume:I

.field private final mMaxVolume:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "volumeControl"    # I
    .param p2, "maxVolume"    # I
    .param p3, "currentVolume"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Landroid/media/VolumeProvider;->mControlType:I

    .line 66
    iput p2, p0, Landroid/media/VolumeProvider;->mMaxVolume:I

    .line 67
    iput p3, p0, Landroid/media/VolumeProvider;->mCurrentVolume:I

    .line 68
    return-void
.end method


# virtual methods
.method public final getCurrentVolume()I
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Landroid/media/VolumeProvider;->mCurrentVolume:I

    return v0
.end method

.method public final getMaxVolume()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Landroid/media/VolumeProvider;->mMaxVolume:I

    return v0
.end method

.method public final getVolumeControl()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Landroid/media/VolumeProvider;->mControlType:I

    return v0
.end method

.method public onAdjustVolume(I)V
    .registers 2
    .param p1, "direction"    # I

    .prologue
    .line 131
    return-void
.end method

.method public onSetVolumeTo(I)V
    .registers 2
    .param p1, "volume"    # I

    .prologue
    .line 119
    return-void
.end method

.method public setCallback(Landroid/media/VolumeProvider$Callback;)V
    .registers 2
    .param p1, "callback"    # Landroid/media/VolumeProvider$Callback;

    .prologue
    .line 138
    iput-object p1, p0, Landroid/media/VolumeProvider;->mCallback:Landroid/media/VolumeProvider$Callback;

    .line 139
    return-void
.end method

.method public final setCurrentVolume(I)V
    .registers 3
    .param p1, "currentVolume"    # I

    .prologue
    .line 105
    iput p1, p0, Landroid/media/VolumeProvider;->mCurrentVolume:I

    .line 106
    iget-object v0, p0, Landroid/media/VolumeProvider;->mCallback:Landroid/media/VolumeProvider$Callback;

    if-eqz v0, :cond_b

    .line 107
    iget-object v0, p0, Landroid/media/VolumeProvider;->mCallback:Landroid/media/VolumeProvider$Callback;

    invoke-virtual {v0, p0}, Landroid/media/VolumeProvider$Callback;->onVolumeChanged(Landroid/media/VolumeProvider;)V

    .line 109
    :cond_b
    return-void
.end method
