.class Lcom/android/settings/notification/ManagedServiceSettings$ViewHolder;
.super Ljava/lang/Object;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ManagedServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field checkbox:Landroid/widget/CheckBox;

.field description:Landroid/widget/TextView;

.field icon:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/ManagedServiceSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/notification/ManagedServiceSettings$1;

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/android/settings/notification/ManagedServiceSettings$ViewHolder;-><init>()V

    return-void
.end method
