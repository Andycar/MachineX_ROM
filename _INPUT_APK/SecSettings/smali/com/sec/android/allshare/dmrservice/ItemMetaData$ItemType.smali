.class public final enum Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;
.super Ljava/lang/Enum;
.source "ItemMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/dmrservice/ItemMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

.field public static final enum ITEM_AUDIO:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

.field public static final enum ITEM_IMAGE:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

.field public static final enum ITEM_UNKNOWN:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

.field public static final enum ITEM_VIDEO:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    const-string v1, "ITEM_IMAGE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;->ITEM_IMAGE:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    .line 73
    new-instance v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    const-string v1, "ITEM_AUDIO"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;->ITEM_AUDIO:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    .line 75
    new-instance v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    const-string v1, "ITEM_VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;->ITEM_VIDEO:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    .line 77
    new-instance v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    const-string v1, "ITEM_UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    sget-object v1, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;->ITEM_IMAGE:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;->ITEM_AUDIO:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;->ITEM_VIDEO:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;->$VALUES:[Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    const-class v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;->$VALUES:[Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    invoke-virtual {v0}, [Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    return-object v0
.end method
