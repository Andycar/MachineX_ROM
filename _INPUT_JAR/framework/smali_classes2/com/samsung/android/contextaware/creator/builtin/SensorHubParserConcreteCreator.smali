.class public Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;
.super Ljava/lang/Object;
.source "SensorHubParserConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$1;,
        Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;
    }
.end annotation


# static fields
.field private static sPowerResetNotiObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->mContext:Landroid/content/Context;

    .line 125
    invoke-direct {p0}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->create()V

    .line 126
    return-void
.end method

.method static synthetic access$100()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->sPowerResetNotiObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    .prologue
    .line 34
    sput-object p0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->sPowerResetNotiObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    return-object p0
.end method

.method private create()V
    .registers 7

    .prologue
    .line 132
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->initialize(Landroid/content/Context;)V

    .line 133
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->values()[Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_f
    if-ge v2, v3, :cond_1b

    aget-object v1, v0, v2

    .line 134
    .local v1, "i":Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;
    iget-object v4, p0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->createObj(Landroid/content/Context;)V

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 136
    .end local v1    # "i":Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;
    :cond_1b
    return-void
.end method


# virtual methods
.method public final getPowerObservable()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .registers 2

    .prologue
    .line 144
    sget-object v0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->sPowerResetNotiObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    return-object v0
.end method
