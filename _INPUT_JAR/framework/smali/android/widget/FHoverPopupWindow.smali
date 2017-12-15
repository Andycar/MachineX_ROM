.class public Landroid/widget/FHoverPopupWindow;
.super Landroid/widget/HoverPopupWindow;
.source "FHoverPopupWindow.java"


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .registers 3
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/HoverPopupWindow;-><init>(Landroid/view/View;I)V

    .line 17
    return-void
.end method
