.class Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;
.super Ljava/lang/Object;
.source "RawGpsProvider.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mmAz:[F

.field private final mmEl:[F

.field private final mmMask:[I

.field private final mmPrn:[I

.field private final mmSnr:[F

.field final synthetic this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)V
    .registers 4

    .prologue
    const/16 v1, 0x20

    .line 179
    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmPrn:[I

    .line 181
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmSnr:[F

    .line 182
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmEl:[F

    .line 183
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmAz:[F

    .line 184
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmMask:[I

    return-void
.end method


# virtual methods
.method public final onGpsStatusChanged(I)V
    .registers 12
    .param p1, "event"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    .line 187
    if-eq p1, v9, :cond_5

    .line 226
    :goto_4
    return-void

    .line 191
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    # invokes: Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getGpsSatellites()Ljava/util/Iterator;
    invoke-static {v5}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$800(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Ljava/util/Iterator;

    move-result-object v0

    .line 192
    .local v0, "gpsSatellites":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    if-nez v0, :cond_13

    .line 193
    const-string v5, "gpsSatellites is null"

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_4

    .line 197
    :cond_13
    const/4 v1, 0x0

    .line 198
    .local v1, "nNumSat":I
    const/4 v2, 0x0

    .line 200
    .local v2, "nNumSatUsedInFix":I
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 201
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/GpsSatellite;

    .line 203
    .local v4, "satellite":Landroid/location/GpsSatellite;
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmPrn:[I

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v6

    aput v6, v5, v1

    .line 204
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmSnr:[F

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v6

    aput v6, v5, v1

    .line 205
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmEl:[F

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v6

    aput v6, v5, v1

    .line 206
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmAz:[F

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v6

    aput v6, v5, v1

    .line 208
    invoke-virtual {v4}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 209
    add-int/lit8 v2, v2, 0x1

    .line 212
    :cond_49
    add-int/lit8 v1, v1, 0x1

    .line 213
    goto :goto_15

    .line 215
    .end local v4    # "satellite":Landroid/location/GpsSatellite;
    :cond_4c
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmMask:[I

    aput v2, v5, v8

    .line 217
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, "names":[Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    # invokes: Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;
    invoke-static {v5}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$1100(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v5, v6, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 219
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    # invokes: Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;
    invoke-static {v5}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$1200(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v3, v6

    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmPrn:[I

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 220
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    # invokes: Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;
    invoke-static {v5}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$1300(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    aget-object v6, v3, v8

    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmSnr:[F

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    .line 221
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    # invokes: Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;
    invoke-static {v5}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$1400(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, v3, v6

    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmEl:[F

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    .line 222
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    # invokes: Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;
    invoke-static {v5}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$1500(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    aget-object v6, v3, v9

    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmAz:[F

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    .line 223
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    # invokes: Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;
    invoke-static {v5}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$1600(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x5

    aget-object v6, v3, v6

    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmMask:[I

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 225
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->notifyObserver()V

    goto/16 :goto_4
.end method
