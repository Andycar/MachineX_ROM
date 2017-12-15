.class Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;
.super Ljava/lang/Object;
.source "LppFusion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QData"
.end annotation


# instance fields
.field private listAPDR:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;",
            ">;"
        }
    .end annotation
.end field

.field private listLoc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private loc:Landroid/location/Location;

.field private msgid:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    .registers 11
    .param p1, "id"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;",
            "TE;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p2, "value":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->msgid:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    .line 106
    if-nez p2, :cond_8

    .line 131
    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_7
    :goto_7
    return-void

    .line 110
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_8
    sget-object v6, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_APDR_DATA_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-ne p1, v6, :cond_30

    .line 112
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;

    .line 113
    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    .line 114
    .local v0, "apdrdata":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;

    new-instance v7, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v7, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 116
    .end local v0    # "apdrdata":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    .end local v2    # "i$":Ljava/util/Iterator;
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_30
    sget-object v6, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_PASS_LOC_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-eq p1, v6, :cond_3c

    sget-object v6, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_PASS_LOC_BATCH_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-eq p1, v6, :cond_3c

    sget-object v6, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_BATCH_LOC_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-ne p1, v6, :cond_46

    .line 120
    :cond_3c
    new-instance v6, Landroid/location/Location;

    check-cast p2, Landroid/location/Location;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-direct {v6, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->loc:Landroid/location/Location;

    goto :goto_7

    .line 121
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_46
    sget-object v6, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_BATCH_LOC_LIST_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-eq p1, v6, :cond_4e

    sget-object v6, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_LOCATION_LIST_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-ne p1, v6, :cond_7

    :cond_4e
    move-object v6, p2

    .line 124
    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v4, v6, [Landroid/location/Location;

    .line 125
    .local v4, "larray":[Landroid/location/Location;
    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "larray":[Landroid/location/Location;
    check-cast v4, [Landroid/location/Location;

    .line 126
    .restart local v4    # "larray":[Landroid/location/Location;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listLoc:Ljava/util/ArrayList;

    .line 127
    move-object v1, v4

    .local v1, "arr$":[Landroid/location/Location;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_69
    if-ge v2, v5, :cond_7

    aget-object v3, v1, v2

    .line 128
    .local v3, "l":Landroid/location/Location;
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listLoc:Ljava/util/ArrayList;

    new-instance v7, Landroid/location/Location;

    invoke-direct {v7, v3}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_69
.end method

.method static synthetic access$2000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->msgid:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listLoc:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Landroid/location/Location;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->loc:Landroid/location/Location;

    return-object v0
.end method
