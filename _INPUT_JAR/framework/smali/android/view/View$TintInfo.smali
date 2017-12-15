.class Landroid/view/View$TintInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TintInfo"
.end annotation


# instance fields
.field mHasTintList:Z

.field mHasTintMode:Z

.field mTintList:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 3289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/view/View$1;

    .prologue
    .line 3289
    invoke-direct {p0}, Landroid/view/View$TintInfo;-><init>()V

    return-void
.end method
