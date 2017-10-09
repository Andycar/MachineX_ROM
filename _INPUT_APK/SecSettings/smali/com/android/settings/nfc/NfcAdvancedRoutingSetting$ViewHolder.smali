.class Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;
.super Ljava/lang/Object;
.source "NfcAdvancedRoutingSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public mAdvanced:Landroid/widget/LinearLayout;

.field public mButton:Landroid/widget/RadioButton;

.field public mPosition:I

.field public mSummary:Landroid/widget/TextView;

.field public mTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$1;

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;-><init>()V

    return-void
.end method
