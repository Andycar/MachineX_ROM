.class public Landroid/net/wifi/ScanResult$InformationElement;
.super Ljava/lang/Object;
.source "ScanResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InformationElement"
.end annotation


# instance fields
.field public bytes:[B

.field public id:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/ScanResult$InformationElement;)V
    .registers 3
    .param p1, "rhs"    # Landroid/net/wifi/ScanResult$InformationElement;

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iget v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    iput v0, p0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 225
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 226
    return-void
.end method
