.class public Landroid/net/wifi/BatchedScanResult;
.super Ljava/lang/Object;
.source "BatchedScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/BatchedScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BatchedScanResult"


# instance fields
.field public final scanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public truncated:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    new-instance v0, Landroid/net/wifi/BatchedScanResult$1;

    invoke-direct {v0}, Landroid/net/wifi/BatchedScanResult$1;-><init>()V

    sput-object v0, Landroid/net/wifi/BatchedScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/BatchedScanResult;->scanResults:Ljava/util/List;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/BatchedScanResult;)V
    .registers 6
    .param p1, "source"    # Landroid/net/wifi/BatchedScanResult;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/BatchedScanResult;->scanResults:Ljava/util/List;

    .line 44
    iget-boolean v2, p1, Landroid/net/wifi/BatchedScanResult;->truncated:Z

    iput-boolean v2, p0, Landroid/net/wifi/BatchedScanResult;->truncated:Z

    .line 45
    iget-object v2, p1, Landroid/net/wifi/BatchedScanResult;->scanResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .local v1, "s":Landroid/net/wifi/ScanResult;
    iget-object v2, p0, Landroid/net/wifi/BatchedScanResult;->scanResults:Ljava/util/List;

    new-instance v3, Landroid/net/wifi/ScanResult;

    invoke-direct {v3, v1}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 46
    .end local v1    # "s":Landroid/net/wifi/ScanResult;
    :cond_2b
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 50
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 52
    .local v2, "sb":Ljava/lang/StringBuffer;
    const-string v3, "BatchedScanResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "truncated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-boolean v4, p0, Landroid/net/wifi/BatchedScanResult;->truncated:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "scanResults: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    iget-object v3, p0, Landroid/net/wifi/BatchedScanResult;->scanResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 56
    .local v1, "s":Landroid/net/wifi/ScanResult;
    const-string v3, " <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_28

    .line 58
    .end local v1    # "s":Landroid/net/wifi/ScanResult;
    :cond_48
    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 69
    iget-boolean v2, p0, Landroid/net/wifi/BatchedScanResult;->truncated:Z

    if-eqz v2, :cond_27

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v2, p0, Landroid/net/wifi/BatchedScanResult;->scanResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v2, p0, Landroid/net/wifi/BatchedScanResult;->scanResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 72
    .local v1, "s":Landroid/net/wifi/ScanResult;
    invoke-virtual {v1, p1, p2}, Landroid/net/wifi/ScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 69
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "s":Landroid/net/wifi/ScanResult;
    :cond_27
    const/4 v2, 0x0

    goto :goto_5

    .line 74
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_29
    return-void
.end method
