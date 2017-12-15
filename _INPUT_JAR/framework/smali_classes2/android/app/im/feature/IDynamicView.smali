.class public interface abstract Landroid/app/im/feature/IDynamicView;
.super Ljava/lang/Object;
.source "IDynamicView.java"

# interfaces
.implements Landroid/app/im/feature/IInjection;


# static fields
.field public static final ON_ITEMCLICK:I = 0x1

.field public static final ON_ITEMLONGCLICK:I = 0x2

.field public static final ON_ITEMSELECTED:I = 0x3

.field public static final ON_NOTHINGSELECTED:I = 0x4


# virtual methods
.method public abstract onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation
.end method

.method public abstract onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation
.end method

.method public abstract onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation
.end method

.method public abstract onNavigationItemSelected(IJ)Z
.end method

.method public abstract onNothingSelected(Landroid/widget/AdapterView;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)Z"
        }
    .end annotation
.end method

.method public abstract onTabChanged(Ljava/lang/String;)V
.end method

.method public abstract onViewCreated(Landroid/view/View;)V
.end method
