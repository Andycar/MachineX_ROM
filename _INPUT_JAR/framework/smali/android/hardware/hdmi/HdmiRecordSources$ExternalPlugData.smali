.class public final Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;
.super Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
.source "HdmiRecordSources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExternalPlugData"
.end annotation


# static fields
.field static final EXTRA_DATA_SIZE:I = 0x1


# instance fields
.field private final mPlugNumber:I


# direct methods
.method private constructor <init>(I)V
    .registers 4
    .param p1, "plugNumber"    # I

    .prologue
    .line 681
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;-><init>(II)V

    .line 682
    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;->mPlugNumber:I

    .line 683
    return-void
.end method

.method synthetic constructor <init>(ILandroid/hardware/hdmi/HdmiRecordSources$1;)V
    .registers 3
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/hardware/hdmi/HdmiRecordSources$1;

    .prologue
    .line 674
    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;-><init>(I)V

    return-void
.end method


# virtual methods
.method extraParamToByteArray([BI)I
    .registers 4
    .param p1, "data"    # [B
    .param p2, "index"    # I

    .prologue
    .line 687
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;->mPlugNumber:I

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 688
    const/4 v0, 0x1

    return v0
.end method
