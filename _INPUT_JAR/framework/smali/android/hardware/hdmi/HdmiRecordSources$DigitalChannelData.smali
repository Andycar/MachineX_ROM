.class public final Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;
.super Ljava/lang/Object;
.source "HdmiRecordSources.java"

# interfaces
.implements Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DigitalChannelData"
.end annotation


# instance fields
.field private mChannelIdentifier:Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;


# direct methods
.method private constructor <init>(Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;)V
    .registers 2
    .param p1, "id"    # Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;->mChannelIdentifier:Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;

    .line 326
    return-void
.end method

.method public static ofOneNumber(I)Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;
    .registers 6
    .param p0, "number"    # I

    .prologue
    .line 320
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;

    new-instance v1, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p0, v4}, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;-><init>(IIILandroid/hardware/hdmi/HdmiRecordSources$1;)V

    invoke-direct {v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;-><init>(Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;)V

    return-object v0
.end method

.method public static ofTwoNumbers(II)Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;
    .registers 6
    .param p0, "majorNumber"    # I
    .param p1, "minorNumber"    # I

    .prologue
    .line 315
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;

    new-instance v1, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, p1, v3}, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;-><init>(IIILandroid/hardware/hdmi/HdmiRecordSources$1;)V

    invoke-direct {v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;-><init>(Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;)V

    return-object v0
.end method


# virtual methods
.method public toByteArray([BI)I
    .registers 5
    .param p1, "data"    # [B
    .param p2, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 330
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;->mChannelIdentifier:Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;

    # invokes: Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->toByteArray([BI)I
    invoke-static {v0, p1, p2}, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->access$400(Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;[BI)I

    .line 332
    add-int/lit8 v0, p2, 0x4

    aput-byte v1, p1, v0

    .line 333
    add-int/lit8 v0, p2, 0x5

    aput-byte v1, p1, v0

    .line 334
    const/4 v0, 0x6

    return v0
.end method
