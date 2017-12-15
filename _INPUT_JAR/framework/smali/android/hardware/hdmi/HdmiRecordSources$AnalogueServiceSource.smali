.class public final Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;
.super Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
.source "HdmiRecordSources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnalogueServiceSource"
.end annotation


# static fields
.field static final EXTRA_DATA_SIZE:I = 0x4


# instance fields
.field private final mBroadcastSystem:I

.field private final mBroadcastType:I

.field private final mFrequency:I


# direct methods
.method private constructor <init>(III)V
    .registers 6
    .param p1, "broadcastType"    # I
    .param p2, "frequency"    # I
    .param p3, "broadcastSystem"    # I

    .prologue
    .line 629
    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;-><init>(II)V

    .line 630
    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;->mBroadcastType:I

    .line 631
    iput p2, p0, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;->mFrequency:I

    .line 632
    iput p3, p0, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;->mBroadcastSystem:I

    .line 633
    return-void
.end method

.method synthetic constructor <init>(IIILandroid/hardware/hdmi/HdmiRecordSources$1;)V
    .registers 5
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/hardware/hdmi/HdmiRecordSources$1;

    .prologue
    .line 615
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;-><init>(III)V

    return-void
.end method


# virtual methods
.method protected extraParamToByteArray([BI)I
    .registers 5
    .param p1, "data"    # [B
    .param p2, "index"    # I

    .prologue
    .line 638
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;->mBroadcastType:I

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 640
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;->mFrequency:I

    int-to-short v0, v0

    add-int/lit8 v1, p2, 0x1

    # invokes: Landroid/hardware/hdmi/HdmiRecordSources;->shortToByteArray(S[BI)I
    invoke-static {v0, p1, v1}, Landroid/hardware/hdmi/HdmiRecordSources;->access$200(S[BI)I

    .line 642
    add-int/lit8 v0, p2, 0x3

    iget v1, p0, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;->mBroadcastSystem:I

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 643
    const/4 v0, 0x4

    return v0
.end method
