.class Lcom/android/server/lights/LightsService$3;
.super Lcom/android/server/lights/LightsManager;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsService;)V
    .registers 2

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/android/server/lights/LightsManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getLight(I)Lcom/android/server/lights/Light;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 411
    const/16 v0, 0xb

    if-ge p1, v0, :cond_b

    .line 412
    iget-object v0, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v0, v0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v0, v0, p1

    .line 414
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
