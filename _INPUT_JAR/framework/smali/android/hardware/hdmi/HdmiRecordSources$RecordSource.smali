.class abstract Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
.super Ljava/lang/Object;
.source "HdmiRecordSources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "RecordSource"
.end annotation


# instance fields
.field protected final mExtraDataSize:I

.field protected final mSourceType:I


# direct methods
.method protected constructor <init>(II)V
    .registers 3
    .param p1, "sourceType"    # I
    .param p2, "extraDataSize"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->mSourceType:I

    .line 65
    iput p2, p0, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->mExtraDataSize:I

    .line 66
    return-void
.end method


# virtual methods
.method abstract extraParamToByteArray([BI)I
.end method

.method final getDataSize(Z)I
    .registers 3
    .param p1, "includeType"    # Z

    .prologue
    .line 71
    if-eqz p1, :cond_7

    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->mExtraDataSize:I

    add-int/lit8 v0, v0, 0x1

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->mExtraDataSize:I

    goto :goto_6
.end method

.method final toByteArray(Z[BI)I
    .registers 6
    .param p1, "includeType"    # Z
    .param p2, "data"    # [B
    .param p3, "index"    # I

    .prologue
    .line 75
    if-eqz p1, :cond_a

    .line 84
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "index":I
    .local v0, "index":I
    iget v1, p0, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->mSourceType:I

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    move p3, v0

    .line 86
    .end local v0    # "index":I
    .restart local p3    # "index":I
    :cond_a
    invoke-virtual {p0, p2, p3}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->extraParamToByteArray([BI)I

    .line 87
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->getDataSize(Z)I

    move-result v1

    return v1
.end method
