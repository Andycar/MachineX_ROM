.class Lcom/android/internal/app/PlatLogoActivity$1$1;
.super Landroid/view/ViewOutlineProvider;
.source "PlatLogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PlatLogoActivity$1;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/PlatLogoActivity$1;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity$1;)V
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$1$1;->this$1:Lcom/android/internal/app/PlatLogoActivity$1;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 101
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$1$1;->this$1:Lcom/android/internal/app/PlatLogoActivity$1;

    invoke-virtual {v1}, Lcom/android/internal/app/PlatLogoActivity$1;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$1$1;->this$1:Lcom/android/internal/app/PlatLogoActivity$1;

    invoke-virtual {v2}, Lcom/android/internal/app/PlatLogoActivity$1;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$1$1;->this$1:Lcom/android/internal/app/PlatLogoActivity$1;

    invoke-virtual {v3}, Lcom/android/internal/app/PlatLogoActivity$1;->getHeight()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 102
    return-void
.end method
