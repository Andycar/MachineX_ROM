.class final enum Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType$1;
.super Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;
.source "InterruptModeContextList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p3, "x0"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/contextaware/InterruptModeContextList$1;)V

    return-void
.end method


# virtual methods
.method public final getParserHandler()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    .registers 2

    .prologue
    .line 47
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    move-result-object v0

    return-object v0
.end method
