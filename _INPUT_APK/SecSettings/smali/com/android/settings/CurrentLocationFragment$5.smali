.class Lcom/android/settings/CurrentLocationFragment$5;
.super Ljava/lang/Object;
.source "CurrentLocationFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CurrentLocationFragment;->checkLocationAavilability()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CurrentLocationFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/CurrentLocationFragment;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/settings/CurrentLocationFragment$5;->this$0:Lcom/android/settings/CurrentLocationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 199
    return-void
.end method
