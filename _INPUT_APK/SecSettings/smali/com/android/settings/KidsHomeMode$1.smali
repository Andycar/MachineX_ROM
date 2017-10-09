.class Lcom/android/settings/KidsHomeMode$1;
.super Ljava/lang/Object;
.source "KidsHomeMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/KidsHomeMode;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/KidsHomeMode;


# direct methods
.method constructor <init>(Lcom/android/settings/KidsHomeMode;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/settings/KidsHomeMode$1;->this$0:Lcom/android/settings/KidsHomeMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 275
    return-void
.end method
