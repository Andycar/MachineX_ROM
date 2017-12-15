.class public Landroid/widget/HorizontalListView$FixedViewInfo;
.super Ljava/lang/Object;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FixedViewInfo"
.end annotation


# instance fields
.field public data:Ljava/lang/Object;

.field public isSelectable:Z

.field final synthetic this$0:Landroid/widget/HorizontalListView;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/widget/HorizontalListView;)V
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, Landroid/widget/HorizontalListView$FixedViewInfo;->this$0:Landroid/widget/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
