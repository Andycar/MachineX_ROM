.class Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer$1;
.super Landroid/graphics/drawable/Drawable;
.source "KeyguardPreviewContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 39
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;->getHeight()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 40
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 42
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 47
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 52
    return-void
.end method
