.class public final Landroid/hardware/hdmi/HdmiRecordSources$AribData;
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
    name = "AribData"
.end annotation


# instance fields
.field private final mOriginalNetworkId:I

.field private final mServiceId:I

.field private final mTransportStreamId:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "transportStreamId"    # I
    .param p2, "serviceId"    # I
    .param p3, "originalNetworkId"    # I

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$AribData;->mTransportStreamId:I

    .line 191
    iput p2, p0, Landroid/hardware/hdmi/HdmiRecordSources$AribData;->mServiceId:I

    .line 192
    iput p3, p0, Landroid/hardware/hdmi/HdmiRecordSources$AribData;->mOriginalNetworkId:I

    .line 193
    return-void
.end method


# virtual methods
.method public toByteArray([BI)I
    .registers 6
    .param p1, "data"    # [B
    .param p2, "index"    # I

    .prologue
    .line 197
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$AribData;->mTransportStreamId:I

    iget v1, p0, Landroid/hardware/hdmi/HdmiRecordSources$AribData;->mServiceId:I

    iget v2, p0, Landroid/hardware/hdmi/HdmiRecordSources$AribData;->mOriginalNetworkId:I

    # invokes: Landroid/hardware/hdmi/HdmiRecordSources;->threeFieldsToSixBytes(III[BI)I
    invoke-static {v0, v1, v2, p1, p2}, Landroid/hardware/hdmi/HdmiRecordSources;->access$100(III[BI)I

    move-result v0

    return v0
.end method
