.class Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;
.super Ljava/lang/Object;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsActivity$HeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field button_:Landroid/widget/ImageButton;

.field check_:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field divider_:Landroid/view/View;

.field icon:Landroid/widget/ImageView;

.field round_:Landroid/widget/ImageView;

.field summary:Landroid/widget/TextView;

.field switch_:Landroid/widget/Switch;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SettingsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/SettingsActivity$1;

    .prologue
    .line 5045
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;-><init>()V

    return-void
.end method
