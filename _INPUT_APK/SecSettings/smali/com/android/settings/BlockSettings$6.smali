.class Lcom/android/settings/BlockSettings$6;
.super Ljava/lang/Object;
.source "BlockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BlockSettings;->makeVideoCallBlockDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BlockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/BlockSettings;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/settings/BlockSettings$6;->this$0:Lcom/android/settings/BlockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 271
    return-void
.end method
