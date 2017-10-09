.class Lcom/android/settings/PenAirViewSettings$1;
.super Ljava/lang/Object;
.source "PenAirViewSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PenAirViewSettings;->showAirButtonDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenAirViewSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/PenAirViewSettings;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/settings/PenAirViewSettings$1;->this$0:Lcom/android/settings/PenAirViewSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 253
    return-void
.end method
