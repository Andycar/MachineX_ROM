.class Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;
.super Ljava/lang/Object;
.source "GridSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field position:I

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/GridSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/GridSettings$1;

    .prologue
    .line 3878
    invoke-direct {p0}, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;-><init>()V

    return-void
.end method
