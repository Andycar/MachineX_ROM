.class Lcom/android/systemui/egg/LLand$Player$1;
.super Landroid/view/ViewOutlineProvider;
.source "LLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/egg/LLand$Player;-><init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/egg/LLand$Player;

.field final synthetic val$this$0:Lcom/android/systemui/egg/LLand;


# direct methods
.method constructor <init>(Lcom/android/systemui/egg/LLand$Player;Lcom/android/systemui/egg/LLand;)V
    .locals 0

    .prologue
    .line 705
    iput-object p1, p0, Lcom/android/systemui/egg/LLand$Player$1;->this$1:Lcom/android/systemui/egg/LLand$Player;

    iput-object p2, p0, Lcom/android/systemui/egg/LLand$Player$1;->val$this$0:Lcom/android/systemui/egg/LLand;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 708
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 709
    .local v3, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 710
    .local v0, "h":I
    int-to-float v4, v3

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 711
    .local v1, "ix":I
    int-to-float v4, v0

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 712
    .local v2, "iy":I
    sub-int v4, v3, v1

    sub-int v5, v0, v2

    invoke-virtual {p2, v1, v2, v4, v5}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 713
    return-void
.end method
