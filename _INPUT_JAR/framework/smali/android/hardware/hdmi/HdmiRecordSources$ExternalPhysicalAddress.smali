.class public final Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;
.super Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
.source "HdmiRecordSources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExternalPhysicalAddress"
.end annotation


# static fields
.field static final EXTRA_DATA_SIZE:I = 0x2


# instance fields
.field private final mPhysicalAddress:I


# direct methods
.method private constructor <init>(I)V
    .registers 4
    .param p1, "physicalAddress"    # I

    .prologue
    .line 725
    const/4 v0, 0x5

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;-><init>(II)V

    .line 726
    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;->mPhysicalAddress:I

    .line 727
    return-void
.end method

.method synthetic constructor <init>(ILandroid/hardware/hdmi/HdmiRecordSources$1;)V
    .registers 3
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/hardware/hdmi/HdmiRecordSources$1;

    .prologue
    .line 719
    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;-><init>(I)V

    return-void
.end method


# virtual methods
.method extraParamToByteArray([BI)I
    .registers 4
    .param p1, "data"    # [B
    .param p2, "index"    # I

    .prologue
    .line 731
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;->mPhysicalAddress:I

    int-to-short v0, v0

    # invokes: Landroid/hardware/hdmi/HdmiRecordSources;->shortToByteArray(S[BI)I
    invoke-static {v0, p1, p2}, Landroid/hardware/hdmi/HdmiRecordSources;->access$200(S[BI)I

    .line 732
    const/4 v0, 0x2

    return v0
.end method
