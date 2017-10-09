.class Lcom/android/settings/PenAirViewHelp$6;
.super Ljava/lang/Object;
.source "PenAirViewHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PenAirViewHelp;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenAirViewHelp;


# direct methods
.method constructor <init>(Lcom/android/settings/PenAirViewHelp;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/settings/PenAirViewHelp$6;->this$0:Lcom/android/settings/PenAirViewHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp$6;->this$0:Lcom/android/settings/PenAirViewHelp;

    const-string v1, "list_scroll"

    invoke-static {v0, v1}, Lcom/android/settings/PenAirViewHelp;->access$100(Lcom/android/settings/PenAirViewHelp;Ljava/lang/String;)V

    .line 281
    return-void
.end method
