.class public final Landroid/hardware/hdmi/HdmiRecordSources$AtscData;
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
    name = "AtscData"
.end annotation


# instance fields
.field private final mProgramNumber:I

.field private final mTransportStreamId:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "transportStreamId"    # I
    .param p2, "programNumber"    # I

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$AtscData;->mTransportStreamId:I

    .line 221
    iput p2, p0, Landroid/hardware/hdmi/HdmiRecordSources$AtscData;->mProgramNumber:I

    .line 222
    return-void
.end method


# virtual methods
.method public toByteArray([BI)I
    .registers 6
    .param p1, "data"    # [B
    .param p2, "index"    # I

    .prologue
    .line 226
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$AtscData;->mTransportStreamId:I

    iget v1, p0, Landroid/hardware/hdmi/HdmiRecordSources$AtscData;->mProgramNumber:I

    const/4 v2, 0x0

    # invokes: Landroid/hardware/hdmi/HdmiRecordSources;->threeFieldsToSixBytes(III[BI)I
    invoke-static {v0, v1, v2, p1, p2}, Landroid/hardware/hdmi/HdmiRecordSources;->access$100(III[BI)I

    move-result v0

    return v0
.end method
