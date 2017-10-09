.class public Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;
.super Ljava/lang/Object;
.source "GridListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/grid/GridListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field cursorStartAt:I

.field groupIdx:I

.field icon:Landroid/widget/ImageView;

.field realPos:I

.field summary:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
