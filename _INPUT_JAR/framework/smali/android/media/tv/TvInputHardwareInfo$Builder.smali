.class public final Landroid/media/tv/TvInputHardwareInfo$Builder;
.super Ljava/lang/Object;
.source "TvInputHardwareInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputHardwareInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAudioAddress:Ljava/lang/String;

.field private mAudioType:I

.field private mDeviceId:Ljava/lang/Integer;

.field private mHdmiPortId:Ljava/lang/Integer;

.field private mType:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mDeviceId:Ljava/lang/Integer;

    .line 142
    iput-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioType:I

    .line 144
    const-string v0, ""

    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioAddress:Ljava/lang/String;

    .line 145
    iput-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    .line 148
    return-void
.end method


# virtual methods
.method public audioAddress(Ljava/lang/String;)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .registers 2
    .param p1, "audioAddress"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioAddress:Ljava/lang/String;

    .line 167
    return-object p0
.end method

.method public audioType(I)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .registers 2
    .param p1, "audioType"    # I

    .prologue
    .line 161
    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioType:I

    .line 162
    return-object p0
.end method

.method public build()Landroid/media/tv/TvInputHardwareInfo;
    .registers 4

    .prologue
    const/16 v2, 0x9

    .line 176
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mDeviceId:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    if-nez v1, :cond_10

    .line 177
    :cond_a
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 179
    :cond_10
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_1c

    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    if-eqz v1, :cond_28

    :cond_1c
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_2e

    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    if-eqz v1, :cond_2e

    .line 181
    :cond_28
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 184
    :cond_2e
    new-instance v0, Landroid/media/tv/TvInputHardwareInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;-><init>(Landroid/media/tv/TvInputHardwareInfo$1;)V

    .line 185
    .local v0, "info":Landroid/media/tv/TvInputHardwareInfo;
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mDeviceId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # setter for: Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I
    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->access$102(Landroid/media/tv/TvInputHardwareInfo;I)I

    .line 186
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # setter for: Landroid/media/tv/TvInputHardwareInfo;->mType:I
    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->access$202(Landroid/media/tv/TvInputHardwareInfo;I)I

    .line 187
    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioType:I

    # setter for: Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I
    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->access$302(Landroid/media/tv/TvInputHardwareInfo;I)I

    .line 188
    # getter for: Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I
    invoke-static {v0}, Landroid/media/tv/TvInputHardwareInfo;->access$300(Landroid/media/tv/TvInputHardwareInfo;)I

    move-result v1

    if-eqz v1, :cond_56

    .line 189
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioAddress:Ljava/lang/String;

    # setter for: Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->access$402(Landroid/media/tv/TvInputHardwareInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    :cond_56
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    if-eqz v1, :cond_63

    .line 192
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # setter for: Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I
    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->access$502(Landroid/media/tv/TvInputHardwareInfo;I)I

    .line 194
    :cond_63
    return-object v0
.end method

.method public deviceId(I)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .registers 3
    .param p1, "deviceId"    # I

    .prologue
    .line 151
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mDeviceId:Ljava/lang/Integer;

    .line 152
    return-object p0
.end method

.method public hdmiPortId(I)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .registers 3
    .param p1, "hdmiPortId"    # I

    .prologue
    .line 171
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    .line 172
    return-object p0
.end method

.method public type(I)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    .line 157
    return-object p0
.end method
