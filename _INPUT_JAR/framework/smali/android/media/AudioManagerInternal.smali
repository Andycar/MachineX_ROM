.class public abstract Landroid/media/AudioManagerInternal;
.super Ljava/lang/Object;
.source "AudioManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract adjustStreamVolumeForUid(IIILjava/lang/String;I)V
.end method

.method public abstract adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;I)V
.end method

.method public abstract setStreamVolumeForUid(IIILjava/lang/String;I)V
.end method
