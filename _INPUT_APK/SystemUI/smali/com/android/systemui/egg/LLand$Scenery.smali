.class Lcom/android/systemui/egg/LLand$Scenery;
.super Landroid/widget/FrameLayout;
.source "LLand.java"

# interfaces
.implements Lcom/android/systemui/egg/LLand$GameView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/LLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scenery"
.end annotation


# instance fields
.field public h:I

.field final synthetic this$0:Lcom/android/systemui/egg/LLand;

.field public v:F

.field public w:I

.field public z:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 909
    iput-object p1, p0, Lcom/android/systemui/egg/LLand$Scenery;->this$0:Lcom/android/systemui/egg/LLand;

    .line 910
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 911
    return-void
.end method


# virtual methods
.method public step(JJFF)V
    .locals 3
    .param p1, "t_ms"    # J
    .param p3, "dt_ms"    # J
    .param p5, "t"    # F
    .param p6, "dt"    # F

    .prologue
    .line 915
    invoke-virtual {p0}, Lcom/android/systemui/egg/LLand$Scenery;->getTranslationX()F

    move-result v0

    invoke-static {}, Lcom/android/systemui/egg/LLand;->access$200()Lcom/android/systemui/egg/LLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/LLand$Params;->TRANSLATION_PER_SEC:F

    mul-float/2addr v1, p6

    iget v2, p0, Lcom/android/systemui/egg/LLand$Scenery;->v:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/LLand$Scenery;->setTranslationX(F)V

    .line 916
    return-void
.end method
